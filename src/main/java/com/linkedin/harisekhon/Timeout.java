//
//  Author: KhulnaSoft Ltd
//  Date: 2016-06-14 12:06:17 +0100 (Tue, 14 Jun 2016)
//
//  https://github.com/KhulnaSoft/lib-java
//
//  License: see accompanying KhulnaSoft Ltd LICENSE file
//
//  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback
//  to help improve or steer this or other code I publish
//
//  https://www.linkedin.com/company/khulnasoft
//


package com.linkedin.khulnasoft;

import static com.linkedin.khulnasoft.Utils.*;

public class Timeout implements Runnable {

    private int secs;

    public Timeout(int secs) {
        if (secs == 0){
            throw new IllegalArgumentException("Timeout(secs) cannot be zero!");
        }
        this.secs = secs;
    }

    public void run() {
        timeout(secs);
    }

    private void timeout(long secs) {
        try {
            Thread.sleep(1000 * secs);
        } catch (InterruptedException e) {
            // pass
        }
        // can't throw checked exceptions from Runnable :(
//        throw new TimeoutException();
//        throw new RuntimeException(String.format("self timed out after %s sec%s", secs, plural(secs)));
        quit("UNKNOWN", String.format("self timed out after %s sec%s", secs, plural(secs)));
    }

    public static void main(String[] args) {
        int secs = 10;
        if (args.length > 0) {
            secs = Integer.valueOf(args[0]);
        }
        (new Thread(new Timeout(secs))).start();
    }

}
