//
//  Author: KhulnaSoft Ltd
//  Date: 2023-05-16 04:35:38 +0100 (Tue, 16 May 2023)
//
//  vim:ts=2:sts=2:sw=2:et
//
//  https://github.com/KhulnaSoft/Jenkins
//
//  License: see accompanying KhulnaSoft Ltd LICENSE file
//
//  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
//
//  https://www.linkedin.com/company/khulnasoft
//

// ========================================================================== //
//     Generate DOCKER_IMAGES environment variable with registry prefixes
// ========================================================================== //

def call(images=[], registry='') {
  echo "Generating DOCKER_IMAGES environment variable" + ( registry ? " with registry prefix '$registry'" : '')
  env.DOCKER_IMAGES = images.collect { (registry ? "$registry/" : '') + it.trim() }.join(',')
  return env.DOCKER_IMAGES
}
