Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13967387814
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 13:52:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 078A13844CF
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 07:52:35 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1FD0338413A
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 07:51:44 -0400 (EDT)
Date: Tue, 18 May 2021 11:51:44 +0000
To: usrp-users@lists.ettus.com
From: subu.rama@gmail.com
Message-ID: <hdP6WJjtM7goMKbLz3kZcYCni0tYoOtEasGOJ4BHWFI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: d677755f-0c64-1bf4-5977-339b63dc187c@itsystems.it
MIME-Version: 1.0
Message-ID-Hash: V3TZDJYM2GEPUIOP4YHG7VW77KQBYU2J
X-Message-ID-Hash: V3TZDJYM2GEPUIOP4YHG7VW77KQBYU2J
X-MailFrom: subu.rama@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: libuhd-3.15 static compilation problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V3TZDJYM2GEPUIOP4YHG7VW77KQBYU2J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4947873194173123954=="

This is a multi-part message in MIME format.

--===============4947873194173123954==
Content-Type: multipart/alternative;
 boundary="b1_hdP6WJjtM7goMKbLz3kZcYCni0tYoOtEasGOJ4BHWFI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_hdP6WJjtM7goMKbLz3kZcYCni0tYoOtEasGOJ4BHWFI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Paolo:

    I took the route of building the boost libraries as static builds to =
use in the static build of libuhd.=20

Some more recent versions of boost had some issues but I was successful w=
ith boost version 1.71.0.

Download boost v1.71.0, run bootstrap.sh and invoke sudo ./b2 cxxflags=3D=
-fPIC cflags=3D-fPIC link=3Dstatic -a install

which results in a bunch libboost\*.a in /usr/local/lib.=20

And then for building uhd, I used cmake -DENABLE_STATIC_LIBS=3DON -DENABL=
E_TESTS=3DOFF ../

(Had issues building the tests).

You should read the note on using static uhd lib in your own app. Need th=
at =E2=80=94Wl,-whole-archive linker directive.

I am having some issues doing this along with using the static boost libr=
aries in my app. Will update once I resolve that issue.

Hope that helps.

=E2=80=94=E2=80=94-

When linking the static library, you must ensure that the library is load=
ed in its entirety, otherwise global objects aren't initialized at load-t=
ime and it will always fail to detect any devices. Also, **all** UHD depe=
ndencies for UHD must be provided unless your linker has other ways of re=
solving library dependencies.

With the GNU ld linker (e.g. on Linux platforms), this is done using the =
`--whole-archive` switch. Using the GNU C++ compiler, the correct command=
 line is:

```
g++ your_uhd_app.cpp -Wl,-whole-archive <path to UHD libs>/libuhd.a -Wl,-=
no-whole-archive -ldl -lpthread -l<all other libraries>

From https://files.ettus.com/manual_archive/release_003_008_003/html/page=
_build_guide.html

And here is some more background on static UHD lib:

http://www.trondeau.com/blog/2015/1/19/working-with-uhd-static-library

Subu
```

--b1_hdP6WJjtM7goMKbLz3kZcYCni0tYoOtEasGOJ4BHWFI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Paolo:</p><p>    I took the route of building the boost libraries as sta=
tic builds to use in the static build of libuhd. </p><p>Some more recent ve=
rsions of boost had some issues but I was successful with boost version 1.7=
1.0.</p><p>Download boost v1.71.0, run bootstrap.sh and invoke sudo ./b2 cx=
xflags=3D-fPIC cflags=3D-fPIC link=3Dstatic -a install</p><p>which results =
in a bunch libboost*.a in /usr/local/lib. </p><p>And then for building uhd,=
 I used cmake -DENABLE_STATIC_LIBS=3DON -DENABLE_TESTS=3DOFF ../</p><p>(Had=
 issues building the tests).</p><p><br></p><p>You should read the note on u=
sing static uhd lib in your own app. Need that =E2=80=94Wl,-whole-archive l=
inker directive.</p><p>I am having some issues doing this along with using =
the static boost libraries in my app. Will update once I resolve that issue=
.</p><p>Hope that helps.</p><p>=E2=80=94=E2=80=94-</p><p>When linking the s=
tatic library, you must ensure that the library is loaded in its entirety, =
otherwise global objects aren't initialized at load-time and it will always=
 fail to detect any devices. Also, <strong>all</strong> UHD dependencies fo=
r UHD must be provided unless your linker has other ways of resolving libra=
ry dependencies.</p><p>With the GNU ld linker (e.g. on Linux platforms), th=
is is done using the <code>--whole-archive</code> switch. Using the GNU C++=
 compiler, the correct command line is:</p><pre><code>g++ your_uhd_app.cpp =
-Wl,-whole-archive &lt;path to UHD libs&gt;/libuhd.a -Wl,-no-whole-archive =
-ldl -lpthread -l&lt;all other libraries&gt;

From https://files.ettus.com/manual_archive/release_003_008_003/html/page_b=
uild_guide.html

And here is some more background on static UHD lib:

http://www.trondeau.com/blog/2015/1/19/working-with-uhd-static-library

Subu
<br></code></pre>

--b1_hdP6WJjtM7goMKbLz3kZcYCni0tYoOtEasGOJ4BHWFI--

--===============4947873194173123954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4947873194173123954==--
