Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2C5355449
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 14:54:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81C5A384009
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 08:54:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="qVbVOFKY";
	dkim-atps=neutral
Received: from resqmta-po-07v.sys.comcast.net (resqmta-po-07v.sys.comcast.net [96.114.154.166])
	by mm2.emwd.com (Postfix) with ESMTPS id 8945F383CC5
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 08:53:27 -0400 (EDT)
Received: from resomta-po-01v.sys.comcast.net ([96.114.154.225])
	by resqmta-po-07v.sys.comcast.net with ESMTP
	id Tl6zl5OV7iCWITlCwlZd6C; Tue, 06 Apr 2021 12:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1617713606;
	bh=Xu2LawrgWZTErIkVIMpbLYhhN3GGsDEWmYXpX+PDojk=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=qVbVOFKYMGk9MllqBDA/a3DfWpLs0gFZAWS5uyCaQVvJJaNlPk7QG63rmnLlP8fyJ
	 BEOz/K4QPGFLQkRujj+jYBvPOuiq46cANf1gRBF4KAfEqjZMk6OidViHEGGL5QLTxT
	 iH3DtehGX6HGrcXER/Mc/aQLXBi8g5EeeIbiqico5uZxugj/caVBCbxjOdOfZUBaNB
	 pcXPg5YX2ghsy45dytpCetKigsxKA8ScXpUn3RuN0UDao3xGC3K1fXnVjajyNT//FZ
	 Kutx7t1v6rfuyttkcC0zUlTfY14z18byRVnfGSQE0gNa+2ZcDgMp95ckjhiuVKW5M7
	 5YHy3sWKEiYlg==
Received: from [IPv6:2601:647:4700:284:6583:3862:7279:d89e]
 ([IPv6:2601:647:4700:284:6583:3862:7279:d89e])
	by resomta-po-01v.sys.comcast.net with ESMTPSA
	id TlCuldFMKnnBOTlCwlE37e; Tue, 06 Apr 2021 12:53:26 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <88b0297dc16541e896eb4bac4878105c@boeing.com>
 <CALNMZ8X3u9wXQu-_u-Cz9x6vrwGw7R8Vnj4xfo89FOeRxfX3Sw@mail.gmail.com>
 <c1aea6c3-fec6-654b-0d44-14547ac126a6@comcast.net>
 <CALNMZ8V7-14DtbQSr_=u172ktfiaca24fsREXfpRBhYW=CzRGA@mail.gmail.com>
From: Ron Economos <w6rz@comcast.net>
Message-ID: <ea5e16f3-1455-f635-fea8-3538524a9c95@comcast.net>
Date: Tue, 6 Apr 2021 05:53:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CALNMZ8V7-14DtbQSr_=u172ktfiaca24fsREXfpRBhYW=CzRGA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: TAMPBBICGHOJ3BNYBD2RGQQKRYMDYVJW
X-Message-ID-Hash: TAMPBBICGHOJ3BNYBD2RGQQKRYMDYVJW
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TAMPBBICGHOJ3BNYBD2RGQQKRYMDYVJW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0805106948821623372=="

This is a multi-part message in MIME format.
--===============0805106948821623372==
Content-Type: multipart/alternative;
 boundary="------------3A1B1A1B22E9D2578DB5AF58"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3A1B1A1B22E9D2578DB5AF58
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Awesome. When you get everything sorted out and you're feeling=20
adventurous, you can add NEON optimization. In the cmake step, replace:

-DNEON_SIMD_ENABLE=3DOFF

with:

-DCMAKE_CXX_FLAGS:STRING=3D"-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dn=
eon=20
-mtune=3Dcortex-a72" -DCMAKE_C_FLAGS:STRING=3D"-march=3Darmv7-a=20
-mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a72"=20
-DCMAKE_ASM_FLAGS:STRING=3D"-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dn=
eon=20
-mtune=3Dcortex-a72 -g"

Ron

On 4/6/21 05:15, Brendan Horsfield wrote:
> Thanks for the tip Ron!=C2=A0 It got me (almost) all the way home.
>
> I can now interface with the USRP via the C++ API, which I couldn't do=20
> previously.
>
> Unfortunately there's still a niggling problem with the Python API (a=20
> different one than before), but I will start a new thread to cover=20
> that issue.
>
> Cheers,
> Brendan.
>
>
> On Sun, Apr 4, 2021 at 11:53 AM Ron Economos <w6rz@comcast.net=20
> <mailto:w6rz@comcast.net>> wrote:
>
>     This is just a guess, but you could try:
>
>     -DCMAKE_SHARED_LINKER_FLAGS=3D"-latomic"
>
>     in addition.
>
>     Ron
>
>     On 4/3/21 18:34, Brendan Horsfield wrote:
>>     Thanks Ken.=C2=A0 As you suggested, I added
>>     -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" to the CMake call.
>>
>>     The good news is that the UHD build & installation process
>>     completed successfully.
>>
>>     The bad news is that when I try to import the uhd module in
>>     Python3, I get=C2=A0the following error:
>>
>>     pi@raspberrypi:~ $ python3
>>     Python 3.7.3 (default, Jan 22 2021, 20:04:44)
>>     [GCC 8.3.0] on linux
>>     Type "help", "copyright", "credits" or "license" for more
>>     information.
>>     >>> import uhd
>>     Traceback (most recent call last):
>>     =C2=A0 File "<stdin>", line 1, in <module>
>>     =C2=A0 File "/usr/local/lib/python3/dist-packages/uhd/__init__.py"=
,
>>     line 10, in <module>
>>     =C2=A0 =C2=A0 from . import types
>>     =C2=A0 File "/usr/local/lib/python3/dist-packages/uhd/types.py", l=
ine
>>     10, in <module>
>>     =C2=A0 =C2=A0 from . import libpyuhd as lib
>>     ImportError: /usr/local/lib/libuhd.so.4.0.0: undefined symbol:
>>     __atomic_fetch_add_8
>>     >>>
>>
>>     Did you encounter this problem too?
>>
>>     I guess the next step is to hack the "CMakeLists.txt" files as
>>     per the link you sent me.=C2=A0 Just to clarify one point first:=C2=
=A0 If I
>>     modify the CMakeLists.txt files, do I still need to include
>>     -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" in the CMake call?
>>
>>     Thanks,
>>     Brendan.
>>
>>
>>     On Sat, Apr 3, 2021 at 10:29 PM Clark (US), Kenneth C
>>     <kenneth.c.clark2@boeing.com
>>     <mailto:kenneth.c.clark2@boeing.com>> wrote:
>>
>>
>>         I had the same problem build UHD on RPi4
>>
>>         Answer here:
>>         https://gitlab.kitware.com/cmake/cmake/-/issues/21174
>>
>>         Add to CMake call:
>>         -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic"
>>
>>         Regards,
>>
>>         Ken
>>
>>

--------------3A1B1A1B22E9D2578DB5AF58
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Awesome. When you get everything sorted out and you're feeling
      adventurous, you can add NEON optimization. In the cmake step,
      replace:</p>
    <p>-DNEON_SIMD_ENABLE=3DOFF</p>
    <p>with:</p>
    <p>-DCMAKE_CXX_FLAGS:STRING=3D"-march=3Darmv7-a -mfloat-abi=3Dhard
      -mfpu=3Dneon -mtune=3Dcortex-a72"
      -DCMAKE_C_FLAGS:STRING=3D"-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=
=3Dneon
      -mtune=3Dcortex-a72" -DCMAKE_ASM_FLAGS:STRING=3D"-march=3Darmv7-a
      -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a72 -g"</p>
    <p>Ron<br>
    </p>
    <div class=3D"moz-cite-prefix">On 4/6/21 05:15, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CALNMZ8V7-14DtbQSr_=3Du172ktfiaca24fsREXfpRBhYW=3DCzRGA@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thanks for the tip Ron!=C2=A0 It got me (almost) a=
ll the
        way home.=C2=A0=C2=A0
        <div><br>
        </div>
        <div>I can now interface with the USRP via the C++ API, which I
          couldn't do previously.</div>
        <div><br>
        </div>
        <div>Unfortunately there's still a niggling problem with the
          Python API (a different one than before), but I will start a
          new thread to cover that issue.</div>
        <div><br>
        </div>
        <div>Cheers,</div>
        <div>Brendan.</div>
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 4, 2021 at 11:5=
3
          AM Ron Economos &lt;<a href=3D"mailto:w6rz@comcast.net"
            moz-do-not-send=3D"true">w6rz@comcast.net</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>This is just a guess, but you could try:</p>
            <p>-DCMAKE_SHARED_LINKER_FLAGS=3D"-latomic"</p>
            <p>in addition.</p>
            <p>Ron<br>
            </p>
            <div>On 4/3/21 18:34, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Thanks Ken.=C2=A0 As you suggested, I adde=
d
                -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" to the CMake call.=C2=
=A0=C2=A0
                <div><br>
                </div>
                <div>The good news is that the UHD build &amp;
                  installation process completed successfully.
                  <div>
                    <div><br>
                    </div>
                    <div>The bad news is that when I try to import the
                      uhd module in Python3, I get=C2=A0the following err=
or:</div>
                    <div><br>
                    </div>
                    <div>pi@raspberrypi:~ $ python3<br>
                      Python 3.7.3 (default, Jan 22 2021, 20:04:44) <br>
                      [GCC 8.3.0] on linux<br>
                      Type "help", "copyright", "credits" or "license"
                      for more information.<br>
                      &gt;&gt;&gt; import uhd<br>
                      Traceback (most recent call last):<br>
                      =C2=A0 File "&lt;stdin&gt;", line 1, in &lt;module&=
gt;<br>
                      =C2=A0 File
                      "/usr/local/lib/python3/dist-packages/uhd/__init__.=
py",
                      line 10, in &lt;module&gt;<br>
                      =C2=A0 =C2=A0 from . import types<br>
                      =C2=A0 File
                      "/usr/local/lib/python3/dist-packages/uhd/types.py"=
,
                      line 10, in &lt;module&gt;<br>
                      =C2=A0 =C2=A0 from . import libpyuhd as lib<br>
                      ImportError: /usr/local/lib/libuhd.so.4.0.0:
                      undefined symbol: __atomic_fetch_add_8<br>
                      &gt;&gt;&gt;=C2=A0<br>
                    </div>
                    <div><br>
                    </div>
                    <div>Did you encounter this problem too?</div>
                    <div><br>
                    </div>
                    <div>I guess the next step is to hack the
                      "CMakeLists.txt" files as per the link you sent
                      me.=C2=A0 Just to clarify one point first:=C2=A0 If=
 I modify
                      the CMakeLists.txt files, do I still need to
                      include -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" in th=
e
                      CMake call?</div>
                    <div><br>
                    </div>
                    <div>Thanks,</div>
                    <div>Brendan.</div>
                    <div>=C2=A0=C2=A0</div>
                    <div><br>
                    </div>
                  </div>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 3, 2021=
 at
                  10:29 PM Clark (US), Kenneth C &lt;<a
                    href=3D"mailto:kenneth.c.clark2@boeing.com"
                    target=3D"_blank" moz-do-not-send=3D"true">kenneth.c.=
clark2@boeing.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex"><br>
                  I had the same problem build UHD on RPi4<br>
                  <br>
                  Answer here:<br>
                  <a
                    href=3D"https://gitlab.kitware.com/cmake/cmake/-/issu=
es/21174"
                    rel=3D"noreferrer" target=3D"_blank"
                    moz-do-not-send=3D"true">https://gitlab.kitware.com/c=
make/cmake/-/issues/21174</a><br>
                  <br>
                  Add to CMake call:<br>
                  -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic"<br>
                  <br>
                  Regards,<br>
                  <br>
                  Ken<br>
                  <br>
                  <br>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------3A1B1A1B22E9D2578DB5AF58--

--===============0805106948821623372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0805106948821623372==--
