Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A289E38925F
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 17:18:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA59D3854E6
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 11:18:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=itsystems.it header.i=@itsystems.it header.b="P0HaTwcM";
	dkim-atps=neutral
Received: from www.itsystems.it (www.itsystems.it [62.94.30.103])
	by mm2.emwd.com (Postfix) with ESMTPS id D9470385367
	for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 11:17:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=itsystems.it; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=DuOEzz9VESK0TYFfCZV6LjPsGP93qvAWP1mQjXa9EiE=; b=P0HaTwcMvLKQefwmtczAKT1cv4
	BoJDzWWXMK5Polg5cJntMnmGtOcZ91o8P6RfAS5wDkwRyvpE0VK1hwyDTER+EdkVs4uEWI3pAZGlJ
	WndP+pEAi5o7mObUwUf63cGbTfCTcFKWnyYdS1fsakhjNbMwPqPY84+q1SgT+2sgmBSA=;
Received: from 77-32-26-57.dyn.eolo.it ([77.32.26.57] helo=[192.168.178.126])
	by www.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.90_1)
	(envelope-from <p.palana@itsystems.it>)
	id 1ljNx4-0004XF-7S
	for usrp-users@lists.ettus.com; Wed, 19 May 2021 15:17:45 +0000
To: usrp-users@lists.ettus.com
References: <hdP6WJjtM7goMKbLz3kZcYCni0tYoOtEasGOJ4BHWFI@lists.ettus.com>
From: Paolo Palana <p.palana@itsystems.it>
Message-ID: <9f4fce76-4514-f950-da95-b348b590dff3@itsystems.it>
Date: Wed, 19 May 2021 17:17:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <hdP6WJjtM7goMKbLz3kZcYCni0tYoOtEasGOJ4BHWFI@lists.ettus.com>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "v-mx.virt.itsystems.it",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 5/18/21 1:51 PM, subu.rama@gmail.com wrote: > > Paolo:
    > > I took the route of building the boost libraries as static builds to
   > use in the static build of libuhd. > > Some more recent versions of [...]    
 Content analysis details:   (-2.9 points, 5.0 required)
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 TVD_RCVD_IP            Message was received from an IP address
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
Message-ID-Hash: PX5AWKTOFL2LKCMM3HB6JVAN2LKSSBO6
X-Message-ID-Hash: PX5AWKTOFL2LKCMM3HB6JVAN2LKSSBO6
X-MailFrom: p.palana@itsystems.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: libuhd-3.15 static compilation problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PX5AWKTOFL2LKCMM3HB6JVAN2LKSSBO6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8734327863826434962=="

This is a multi-part message in MIME format.
--===============8734327863826434962==
Content-Type: multipart/alternative;
 boundary="------------5FE21F432A3CEE259EFA9562"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5FE21F432A3CEE259EFA9562
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

On 5/18/21 1:51 PM, subu.rama@gmail.com wrote:
>
> Paolo:
>
> I took the route of building the boost libraries as static builds to=20
> use in the static build of libuhd.
>
> Some more recent versions of boost had some issues but I was=20
> successful with boost version 1.71.0.
>
> Download boost v1.71.0, run bootstrap.sh and invoke sudo ./b2=20
> cxxflags=3D-fPIC cflags=3D-fPIC link=3Dstatic -a install
>
> which results in a bunch libboost*.a in /usr/local/lib.
>
> And then for building uhd, I used cmake -DENABLE_STATIC_LIBS=3DON=20
> -DENABLE_TESTS=3DOFF ../
>
> (Had issues building the tests).
>
what you suggest is for shure a possible solution and also a good one I=20
dare say, better than mine for shure.

However I choose not to rebuild boost because, from my own point of view=20
clearly, the static version of libuhd should link using the libraries=20
provided by the distro you are using. This, I think, make things easier=20
for people who are working, for any reasons, on different platforms=20
(e.g. ubuntu 18.04 and ubuntu 20.4 use different boost versions).

Of course this is my opinion and can be completely wrong,

>
> You should read the note on using static uhd lib in your own app. Need=20
> that =E2=80=94Wl,-whole-archive linker directive.
>
Yes, you are rigth, I should. However my problem in linking an=20
application using libuhd.a was not with this library, but with libdl.

Hope can be helpful

have a good day.

> I am having some issues doing this along with using the static boost=20
> libraries in my app. Will update once I resolve that issue.
>
> Hope that helps.
>
> =E2=80=94=E2=80=94-
>
> When linking the static library, you must ensure that the library is=20
> loaded in its entirety, otherwise global objects aren't initialized at=20
> load-time and it will always fail to detect any devices. Also, *all*=20
> UHD dependencies for UHD must be provided unless your linker has other=20
> ways of resolving library dependencies.
>
> With the GNU ld linker (e.g. on Linux platforms), this is done using=20
> the |--whole-archive| switch. Using the GNU C++ compiler, the correct=20
> command line is:
>
> |g++ your_uhd_app.cpp -Wl,-whole-archive <path to UHD libs>/libuhd.a=20
> -Wl,-no-whole-archive -ldl -lpthread -l<all other libraries> From=20
> https://files.ettus.com/manual_archive/release_003_008_003/html/page_bu=
ild_guide.html=20
> And here is some more background on static UHD lib:=20
> http://www.trondeau.com/blog/2015/1/19/working-with-uhd-static-library=20
> Subu |
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------5FE21F432A3CEE259EFA9562
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi, <br>
    </p>
    <div class=3D"moz-cite-prefix">On 5/18/21 1:51 PM, <a class=3D"moz-tx=
t-link-abbreviated" href=3D"mailto:subu.rama@gmail.com">subu.rama@gmail.c=
om</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:hdP6WJjtM7goMKbLz3kZcYCni0tYoOtEasGOJ4BHWFI@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Paolo:</p>
      <p> I took the route of building the boost libraries as static
        builds to use in the static build of libuhd. </p>
      <p>Some more recent versions of boost had some issues but I was
        successful with boost version 1.71.0.</p>
      <p>Download boost v1.71.0, run bootstrap.sh and invoke sudo ./b2
        cxxflags=3D-fPIC cflags=3D-fPIC link=3Dstatic -a install</p>
      <p>which results in a bunch libboost*.a in /usr/local/lib. </p>
      <p>And then for building uhd, I used cmake -DENABLE_STATIC_LIBS=3DO=
N
        -DENABLE_TESTS=3DOFF ../</p>
      <p>(Had issues building the tests).</p>
    </blockquote>
    <p>what you suggest is for shure a possible solution and also a good
      one I dare say, better than mine for shure.<br>
    </p>
    <p>However I choose not to rebuild boost because, from my own point
      of view clearly, the static version of libuhd should link using
      the libraries provided by the distro you are using. This, I think,
      make things easier for people who are working, for any reasons, on
      different platforms (e.g. ubuntu 18.04 and ubuntu 20.4 use
      different boost versions). <br>
    </p>
    <p>Of course this is my opinion and can be completely wrong,</p>
    <blockquote type=3D"cite"
      cite=3D"mid:hdP6WJjtM7goMKbLz3kZcYCni0tYoOtEasGOJ4BHWFI@lists.ettus=
.com">
      <p><br>
      </p>
      <p>You should read the note on using static uhd lib in your own
        app. Need that =E2=80=94Wl,-whole-archive linker directive.</p>
    </blockquote>
    <p>Yes, you are rigth, I should. However my problem in linking an
      application using libuhd.a was not with this library, but with
      libdl. <br>
    </p>
    <p>Hope can be helpful</p>
    <p>have a good day.<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:hdP6WJjtM7goMKbLz3kZcYCni0tYoOtEasGOJ4BHWFI@lists.ettus=
.com">
      <p>I am having some issues doing this along with using the static
        boost libraries in my app. Will update once I resolve that
        issue.</p>
      <p>Hope that helps.</p>
      <p>=E2=80=94=E2=80=94-</p>
      <p>When linking the static library, you must ensure that the
        library is loaded in its entirety, otherwise global objects
        aren't initialized at load-time and it will always fail to
        detect any devices. Also, <strong>all</strong> UHD dependencies
        for UHD must be provided unless your linker has other ways of
        resolving library dependencies.</p>
      <p>With the GNU ld linker (e.g. on Linux platforms), this is done
        using the <code>--whole-archive</code> switch. Using the GNU
        C++ compiler, the correct command line is:</p>
      <pre><code>g++ your_uhd_app.cpp -Wl,-whole-archive &lt;path to UHD =
libs&gt;/libuhd.a -Wl,-no-whole-archive -ldl -lpthread -l&lt;all other li=
braries&gt;

From <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/m=
anual_archive/release_003_008_003/html/page_build_guide.html">https://fil=
es.ettus.com/manual_archive/release_003_008_003/html/page_build_guide.htm=
l</a>

And here is some more background on static UHD lib:

<a class=3D"moz-txt-link-freetext" href=3D"http://www.trondeau.com/blog/2=
015/1/19/working-with-uhd-static-library">http://www.trondeau.com/blog/20=
15/1/19/working-with-uhd-static-library</a>

Subu

</code></pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------5FE21F432A3CEE259EFA9562--

--===============8734327863826434962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8734327863826434962==--
