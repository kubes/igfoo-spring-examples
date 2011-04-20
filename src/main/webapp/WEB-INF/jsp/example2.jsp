<%@ taglib prefix="assets" uri="http://www.igfoo.com/jsp/taglib/igfoo-assets.tld" %>

<div id="content">
  Page that shows a named resource, such as an embeded script.  Think google 
  analytics or other scripts with source on page.
  <assets:include types="scripts" names="my-named-resource" />
</div>