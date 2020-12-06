Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 776FB2D0593
	for <lists+usrp-users@lfdr.de>; Sun,  6 Dec 2020 16:04:36 +0100 (CET)
Received: from [::1] (port=55002 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klvaT-0001yD-UB; Sun, 06 Dec 2020 10:04:33 -0500
Received: from resqmta-po-07v.sys.comcast.net ([96.114.154.166]:41221)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1klvaQ-0001ky-92
 for usrp-users@lists.ettus.com; Sun, 06 Dec 2020 10:04:30 -0500
Received: from resomta-po-17v.sys.comcast.net ([96.114.154.241])
 by resqmta-po-07v.sys.comcast.net with ESMTP
 id lvIak8VqPQCknlvZlkrkuQ; Sun, 06 Dec 2020 15:03:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1607267029;
 bh=9ps6XZkTvuGXZVN0fwbjzD3d0e1JkaIEIv+HY+igGa0=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=bxDyFYh/UI4S2RZwiZb0mOQAZT6MCl6RUgtQjLQqMAsJNLQ5i+3aOgp6ibkk5dLv4
 O5fBvAWvw0zhSvaEIq0zQN8mLf/ACE9zgByLwPI79NAABpN5YwtM/PefSNC6ltyWHj
 XcnIFlNwdtRiGwiifooif3FXgQkSoy200n2k00RLbCEZ/k1Hp+UXsCmQirPjyp9+Av
 rbFdFoe9Vw2pfNDCMduSI6Z73ePkIkx6TFMcw1bnLVTuKgHv9rqhq4nuPfrD53/CsY
 B+4BiImPxctO6pSbEkbMJda+twK/qP1+9KU5IWwE2o+VYq8aauyL1SgvpzchP+/w4p
 vxfbmyfKQoylg==
Received: from [IPv6:2601:647:4200:ea30:2466:a5ce:3b7c:a3d4]
 ([IPv6:2601:647:4200:ea30:2466:a5ce:3b7c:a3d4])
 by resomta-po-17v.sys.comcast.net with ESMTPSA
 id lvZkkzLKDr0cjlvZkkhROS; Sun, 06 Dec 2020 15:03:48 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <CAKx8PBi=-d5=yfyPf_=AVJYrvQq1-eshS5EW=jLzogS9uO6nRw@mail.gmail.com>
 <CAGNhwTMz2w-kD=a4m9EeLHqsXP9cKgXhok+jsW1Tu=einSvgyQ@mail.gmail.com>
 <CAKx8PBgNoL6bAf8o-hXr0HnJnNaAj5XknPF5RPamY3Cs_hYCEg@mail.gmail.com>
 <CAKx8PBjjDas_yuBxOgM6O8R1zqgZUiYavqFfidu87n1_qEsDrA@mail.gmail.com>
Message-ID: <c53ab9dd-b83a-80e7-f3d9-c54dd639b201@comcast.net>
Date: Sun, 6 Dec 2020 07:03:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKx8PBjjDas_yuBxOgM6O8R1zqgZUiYavqFfidu87n1_qEsDrA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] meta-ettus-v4.0.0.0 segfault
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============6449176372996217536=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============6449176372996217536==
Content-Type: multipart/alternative;
 boundary="------------3366631B6F860956AF0DE6F8"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3366631B6F860956AF0DE6F8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Unfortunately, that FFTW bug has been around for a while. Issue 213 is a 
duplicate of issue 182 from a year+ ago.

https://github.com/FFTW/fftw3/issues/182

On Ubuntu 20.04 armhf, they're just compiling the FFTW package without 
NEON enabled.

Ron

On 12/6/20 06:27, Ben Magistro via USRP-users wrote:
> Issue appears to be with the compiler that is included in Zeus (gcc 
> 9.x vs 8.x) and an interaction with fftw. There is an open issue with 
> fftw (https://github.com/FFTW/fftw3/issues/213) and a request to the 
> yocto folks to request they consider adding back gcc-8.3 to zeus + 
> dunfell (https://bugzilla.yoctoproject.org/show_bug.cgi?id=14144) 
> until this can be better resolved.  I think data point 3 confirms this 
> as I did not include options to enable neon when I compiled.
>
> On Wed, Nov 11, 2020 at 1:39 PM Ben Magistro <koncept1@gmail.com 
> <mailto:koncept1@gmail.com>> wrote:
>
>     Adding some more data points.
>
>     1) I've been trying to rebuild meta-ettus-v4 with debug enabled
>     but am hitting an issue with image size and can't seem to get past
>     that.  It says I should increase `MENDER_STORAGE_TOTAL_SIZE_MB` if
>     the actual size is larger but increasing this seems to have no
>     effect.  I am using the ettus docker image for oe-builder with the
>     command `./meta-ettus/contrib/build_imgs_package.sh e310_sg3
>     v4.0.0.0`.  For the debug portion I've added a few lines to
>     `build/conf/local.conf` to add the packages. I'm open to
>     suggestions to build the image with debug symbols and provide
>     additional feedback.
>
>     2) I put together a simple flowgraph, UHD source --> frequency
>     xlating fft --> null sink.  This also segfaults, no guarantees
>     that I got the parameters correct.
>
>     3) Since the issues seem to be with fftw, I decided to try
>     building my own copy of fftw mostly to get debug symbols and
>     continue troubleshooting.  For this I used `./configure
>     --enable-debug --enable-shared --enable-threads --enable-float`
>     and `make CFLAGS="-ggdb"`.  These options are best guesses right
>     now since I didn't look at the layers to see what parameters it is
>     using (assuming it is in one of the layers).  Using this build
>     with `export LD_LIBRARY_PATH=/usr/local/lib/` I do not get a
>     segfault with gr-ais or the above flowgraph but I also don't get
>     the expected output which makes me question the parameters I used
>     to build it.  Output wise I get a string of "D" or "O" to the console.
>
>     Thanks
>
>     Ben
>
>     On Thu, Nov 5, 2020 at 9:22 AM Michael Dickens
>     <michael.dickens@ettus.com <mailto:michael.dickens@ettus.com>> wrote:
>
>         Hi Ben - This issue has been reported to R&D internally. If
>         you wish to create a public-facing UHD issue on our Github
>         tracker please go ahead & do so, and tag me on it so that we
>         can keep track of it internally. - MLD
>
>         On Wed, Nov 4, 2020 at 11:25 PM Ben Magistro via USRP-users
>         <usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com>> wrote:
>
>             Is anyone else using meta-ettus-v4.0.0.0 yet?  if so, have
>             you had any issues with libfftw?
>
>             Using the image on an E310, adding a single OOT module
>             (gr-ais) and trying to run an app distributed with it, the
>             app segfaults.  To further troubleshoot, I added gdb and
>             it comes back with the following.  I have a separate
>             development host that has gnuradio 3.8 setup using pybombs
>             and do not experience this issue there.
>
>             Thread 1 "python3" received signal SIGSEGV, Segmentation
>             fault.
>             0xb6947836 in ?? () from /usr/lib/libfftw3f.so.3
>
>             To compile, I've needed to override PYTHON_EXECUTABLE as
>             it points to a non-existent path in /home/oe-builder....
>             in /usr/lib/cmake/gnuradio/GnuradioConfig.cmake. To run I
>             also needed to define LD_EXPORT_PATH pointing to
>             /usr/local/lib/.
>
>             Thanks in advance.
>             _______________________________________________
>             USRP-users mailing list
>             USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------3366631B6F860956AF0DE6F8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Unfortunately, that FFTW bug has been around for a while. Issue
      213 is a duplicate of issue 182 from a year+ ago.</p>
    <p><a class="moz-txt-link-freetext" href="https://github.com/FFTW/fftw3/issues/182">https://github.com/FFTW/fftw3/issues/182</a></p>
    <p>On Ubuntu 20.04 armhf, they're just compiling the FFTW package
      without NEON enabled.</p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 12/6/20 06:27, Ben Magistro via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAKx8PBjjDas_yuBxOgM6O8R1zqgZUiYavqFfidu87n1_qEsDrA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Issue appears to be with the compiler that is
        included in Zeus (gcc 9.x vs 8.x) and an interaction with fftw. 
        There is an open issue with fftw (<a
          href="https://github.com/FFTW/fftw3/issues/213"
          moz-do-not-send="true">https://github.com/FFTW/fftw3/issues/213</a>)
        and a request to the yocto folks to request they consider adding
        back gcc-8.3 to zeus + dunfell (<a
          href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=14144"
          moz-do-not-send="true">https://bugzilla.yoctoproject.org/show_bug.cgi?id=14144</a>)
        until this can be better resolved.  I think data point 3
        confirms this as I did not include options to enable neon when I
        compiled.</div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Nov 11, 2020 at 1:39
          PM Ben Magistro &lt;<a href="mailto:koncept1@gmail.com"
            moz-do-not-send="true">koncept1@gmail.com</a>&gt; wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">
            <div>Adding some more data points.</div>
            <div><br>
            </div>
            <div>1) I've been trying to rebuild meta-ettus-v4 with debug
              enabled but am hitting an issue with image size and can't
              seem to get past that.  It says I should increase
              `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size is
              larger but increasing this seems to have no effect.  I am
              using the ettus docker image for oe-builder with the
              command `./meta-ettus/contrib/build_imgs_package.sh
              e310_sg3 v4.0.0.0`.  For the debug portion I've added a
              few lines to `build/conf/local.conf` to add the packages. 
              I'm open to suggestions to build the image with debug
              symbols and provide additional feedback.</div>
            <div><br>
            </div>
            <div>2) I put together a simple flowgraph, UHD source --&gt;
              frequency xlating fft --&gt; null sink.  This also
              segfaults, no guarantees that I got the parameters
              correct.</div>
            <div><br>
            </div>
            <div>3) Since the issues seem to be with fftw, I decided to
              try building my own copy of fftw mostly to get debug
              symbols and continue troubleshooting.  For this I used
              `./configure --enable-debug --enable-shared
              --enable-threads --enable-float` and `make
              CFLAGS="-ggdb"`.  These options are best guesses right now
              since I didn't look at the layers to see what parameters
              it is using (assuming it is in one of the layers).  Using
              this build with `export LD_LIBRARY_PATH=/usr/local/lib/` I
              do not get a segfault with gr-ais or the above flowgraph
              but I also don't get the expected output which makes me
              question the parameters I used to build it.  Output wise I
              get a string of "D" or "O" to the console.</div>
            <div><br>
            </div>
            <div>Thanks</div>
            <div><br>
            </div>
            <div>Ben<br>
            </div>
          </div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Thu, Nov 5, 2020 at
              9:22 AM Michael Dickens &lt;<a
                href="mailto:michael.dickens@ettus.com" target="_blank"
                moz-do-not-send="true">michael.dickens@ettus.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div dir="ltr">
                <div dir="ltr">Hi Ben - This issue has been reported to
                  R&amp;D internally. If you wish to create a
                  public-facing UHD issue on our Github tracker please
                  go ahead &amp; do so, and tag me on it so that we can
                  keep track of it internally. - MLD<br>
                  <br>
                </div>
                <div class="gmail_quote">
                  <div dir="ltr" class="gmail_attr">On Wed, Nov 4, 2020
                    at 11:25 PM Ben Magistro via USRP-users &lt;<a
                      href="mailto:usrp-users@lists.ettus.com"
                      target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class="gmail_quote" style="margin:0px 0px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div dir="ltr">
                      <div>Is anyone else using meta-ettus-v4.0.0.0
                        yet?  if so, have you had any issues with
                        libfftw?<br>
                      </div>
                      <div><br>
                      </div>
                      <div>Using the image on an E310, adding a single
                        OOT module (gr-ais) and trying to run an app
                        distributed with it, the app segfaults.  To
                        further troubleshoot, I added gdb and it comes
                        back with the following.  I have a separate
                        development host that has gnuradio 3.8 setup
                        using pybombs and do not experience this issue
                        there.<br>
                      </div>
                      <div><br>
                      </div>
                      <div>Thread 1 "python3" received signal SIGSEGV,
                        Segmentation fault.<br>
                        0xb6947836 in ?? () from /usr/lib/libfftw3f.so.3</div>
                      <div><br>
                      </div>
                      <div>To compile, I've needed to override
                        PYTHON_EXECUTABLE as it points to a non-existent
                        path in /home/oe-builder.... in
                        /usr/lib/cmake/gnuradio/GnuradioConfig.cmake. 
                        To run I also needed to define LD_EXPORT_PATH
                        pointing to /usr/local/lib/.</div>
                      <div><br>
                      </div>
                      <div>Thanks in advance.<br>
                      </div>
                    </div>
                    _______________________________________________<br>
                    USRP-users mailing list<br>
                    <a href="mailto:USRP-users@lists.ettus.com"
                      target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                    <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                      rel="noreferrer" target="_blank"
                      moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  </blockquote>
                </div>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------3366631B6F860956AF0DE6F8--


--===============6449176372996217536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6449176372996217536==--

