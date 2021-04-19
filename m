Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D34C364D6F
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 00:02:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A96038434E
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 18:02:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OqjrNVrn";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 39241384C08
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 18:01:15 -0400 (EDT)
Received: by mail-qk1-f170.google.com with SMTP id s5so28703171qkj.5
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 15:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=bTD5/qd8cly1F4l2kmW7Ur+X3jkIt4uDObIFn+eS9ME=;
        b=OqjrNVrndw6Cd7jHpRI2FGVx9cgE069g4fLitkTcwugb4bxevenMgvZln1g5DvrNlO
         VinXUr2DlERu9xtBD4A/eIFjFOzg3lBzauphXT6p723h2sxgyUJiKuhfJMMK4qd44mmc
         1mFjbhU5Sa5nCVdGjuVGszYz1IB6VwveTvq1HjV543Z+36RbA+rp1Hs1t+4ANPzMm06Q
         cJ0JVn8yiR+aPWJuGHSujTTV3a47jYArvLBA35hbuoY8LY6yquq9Dz2rFYMZrk65jxoP
         /2WamjA0xsD5mjvGHXkNJH/FCTSN90nf2jZBTE9EFCyQc+afRekjfYWwsvodkTc/5GW6
         eWxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=bTD5/qd8cly1F4l2kmW7Ur+X3jkIt4uDObIFn+eS9ME=;
        b=YGZ2xXInTmtXOLrnLMzoWURUx3pmDeAGArCkzF3TnuEIwK5DtpMq36MkTQNPniy+lR
         1dcue5VY9YHSvNgTWdM4e0ydkm4eqXNxMoCNI5pk5KSj+5SHND9MKdSernL/MjlRp/d8
         eK+nY4n4LfMn+2o3bVHKqKSfEpXv4t7oZoL5QBkx/rcdgTuPptkkMf46RpflVYOX5FzH
         xDvNw/wBQ05m1kl+sFFpHqw+Uamy/9G2yImAqEaiezak9FJ4vsmvptn47MEdjwEbHq9j
         dsVoGCGUy/d6zZOfB6m9O/yKNz0vQxIhww0JuJUeO5oR7bosD7fnkr/TN4AexPFgosCk
         hIPg==
X-Gm-Message-State: AOAM531vgOLdUDbwgwYa9UdCdfZEDn3Z1bsNEH5LWvcPUu+QEB76Jq4A
	uQCsXMN2VE0b/h9S3pnaIHyk57iGs/IEhg==
X-Google-Smtp-Source: ABdhPJz+kxFKwYVIcak42SLknW9QncK4itntqDw3K6YHrWqrCIDAVDoiv4yBxQlKi5NxX7ch9f3+oA==
X-Received: by 2002:a05:620a:1202:: with SMTP id u2mr12844705qkj.248.1618869674452;
        Mon, 19 Apr 2021 15:01:14 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id b11sm9995629qtt.5.2021.04.19.15.01.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 15:01:14 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Apr 2021 18:01:13 -0400
Message-Id: <8BD61B25-5BDD-4864-8C30-B1C133F513F2@gmail.com>
References: <CALNMZ8X-Gd8--wvtxt+j+6uFbiG=BPXUC5OPuD-N22HbRMh1fQ@mail.gmail.com>
In-Reply-To: <CALNMZ8X-Gd8--wvtxt+j+6uFbiG=BPXUC5OPuD-N22HbRMh1fQ@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: DJITSOGRVLQIUQXP4XM4QPLWTAVO6N4A
X-Message-ID-Hash: DJITSOGRVLQIUQXP4XM4QPLWTAVO6N4A
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DJITSOGRVLQIUQXP4XM4QPLWTAVO6N4A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7187109250473127754=="


--===============7187109250473127754==
Content-Type: multipart/alternative; boundary=Apple-Mail-17BF4EAD-A849-4766-902B-94FF4F015038
Content-Transfer-Encoding: 7bit


--Apple-Mail-17BF4EAD-A849-4766-902B-94FF4F015038
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

My guess is that PyBombs is finding the old UHD and using that to build GR.=20=


Sent from my iPhone

> On Apr 19, 2021, at 5:58 PM, Brendan Horsfield <brendan.horsfield@vectalab=
s.com> wrote:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> Running gnuradio-config-info -v returns the following:  v3.8.2.0-112-ge20f=
fa3c
>=20
> My PYTHONPATH is as follows:
>=20
> /usr/local/lib/python3.6/dist-packages
> /usr/lib/python2.7
> /usr/lib/python2.7/plat-x86_64-linux-gnu
> /usr/lib/python2.7/lib-tk
> /usr/lib/python2.7/lib-old
> /usr/lib/python2.7/lib-dynload
> /usr/local/lib/python2.7/dist-packages
> /usr/lib/python2.7/dist-packages
> /usr/lib/python2.7/dist-packages/gtk-2.0
> /usr/lib/python2.7/dist-packages/wx-3.0-gtk3
>=20
> I should also mention that my approach to date has been to use PyBOMBS to i=
nstall GNU Radio, after installing UHD driver v3.15.0.0 from source.  Howeve=
r, both times I have attempted this, the PyBOMBS installer has asked me whet=
her I want to rebuild UHD from source or keep the existing binary.  When I c=
hoose "keep existing", the installer crashes out with an error message (both=
 times).
>=20
> Brendan.
>   =20
>=20
>=20
>> On Mon, Apr 19, 2021 at 11:58 PM Marcus D. Leech <patchvonbraun@gmail.com=
> wrote:
>> On 04/19/2021 03:15 AM, brendan.horsfield@vectalabs.com wrote:
>>> Hi All,
>>>=20
>>> I have just upgraded my laptop to the latest version of GNU Radio Compan=
ion (ver 3.8.2.0 (Python 3.6.9)), and am now trying to use it to monitor a b=
lock of spectrum with my USRP B210. Unfortunately the flowgraph won=E2=80=99=
t run (even though it ran in my old GNU Radio setup), and instead prints the=
 following message to the console:
>>>=20
>>> linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknow=
n
>>>=20
>>> UHD Warning:
>>>=20
>>> EnvironmentError: IOError: Could not find path for image: usrp_b200_fw.h=
ex
>>>=20
>>> Using images directory: <no images directory located>
>>>=20
>>> Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow th=
e below instructions to download the images package.
>>>=20
>>> Please run:
>>>=20
>>> "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>>>=20
>>> Traceback (most recent call last):
>>>=20
>>> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 244, i=
n <module>
>>>=20
>>> main()
>>>=20
>>> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 220, i=
n main
>>>=20
>>> tb =3D top_block_cls()
>>>=20
>>> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 87, i=
n __init__
>>>=20
>>> channels=3Dlist(range(0,1)),
>>>=20
>>> File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line 125=
, in constructor_interceptor
>>>=20
>>> return old_constructor(*args)
>>>=20
>>> File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line 325=
9, in make
>>>=20
>>> return _uhd_swig.usrp_source_make(device_addr, stream_args, issue_stream=
_cmd_on_start)
>>>=20
>>> RuntimeError: LookupError: KeyError: No devices found for ----->
>>>=20
>>> Device Address:
>>>=20
>>> serial: 318425D
>>>=20
>>> The above message suggests GRC is calling version 003.010.003.000-0 of t=
he UHD driver. This is weird, as last week I installed version 3.15.0.0 of t=
he UHD driver on my laptop, after first uninstalling the old driver (or so I=
 thought=E2=80=A6).
>>>=20
>>> However, if I run uhd_usrp_probe or uhd_find_devices, I get a message co=
nfirming that I am indeed running v3.15.0.0 of the UHD driver:
>>>=20
>>> linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de
>>>=20
>>> If I look in the folder =E2=80=9C/usr/lib/x86_64-linux-gnu/=E2=80=9D, I f=
ind the files libuhd.so.003.010.003 and libuhd.so.3.15.0 are both present =E2=
=80=94 but I am pretty sure there should only be one of them present!
>>>=20
>>> This =E2=80=9Cdual-install=E2=80=9D problem seems to be fairly common am=
ong USRP/GNU Radio users, but so far I haven=E2=80=99t found any actual solu=
tions.
>>>=20
>>> There is also a second error message in the above console output: =E2=80=
=9CEnvironmentError: IOError: Could not find path for image: usrp_b200_fw.he=
x=E2=80=9D. This is baffling, as I have run the script =E2=80=9C/usr/local/l=
ib/uhd/utils/uhd_images_downloader.py=E2=80=9C three times, and am confident=
 that the FPGA images have downloaded successfully (for the record, they are=
 in /usr/local/share/uhd/images).
>>>=20
>>> If anyone can tell me how to resolve these problems, I would be very gra=
teful!
>>>=20
>>> Regards,
>>>=20
>>> Brendan.
>>>=20
>>>=20
>> That means that the version of Gnu Radio you used to produce whatever app=
 you have is linked against UHD 3.10.3, whereas all
>>   your UHD *utilities* are linked against the newer version.
>>=20
>> What happens when you run:
>>=20
>> gnuradio-config-info -v
>>=20
>> What is in your PYTHONPATH?  Is it perhaps pointing to older python code,=
 and you're picking up older (very older) python modules that
>>   are themselves linked against both an older GR and older UHD?
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-17BF4EAD-A849-4766-902B-94FF4F015038
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">My guess is that PyBombs is finding the old=
 UHD and using that to build GR.&nbsp;<br><br><div dir=3D"ltr">Sent from my i=
Phone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 19, 2021, a=
t 5:58 PM, Brendan Horsfield &lt;brendan.horsfield@vectalabs.com&gt; wrote:<=
br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<div dir=3D"ltr">Hi&nbsp;Marcus,<div><br></div><div>Running gnuradio-config-=
info -v returns the following:&nbsp;&nbsp;<b>v3.8.2.0-112-ge20ffa3c</b><br><=
/div><div><br></div><div>My PYTHONPATH is as follows:</div><div><br></div><d=
iv>/usr/local/lib/python3.6/dist-packages<br>/usr/lib/python2.7<br>/usr/lib/=
python2.7/plat-x86_64-linux-gnu<br>/usr/lib/python2.7/lib-tk<br>/usr/lib/pyt=
hon2.7/lib-old<br>/usr/lib/python2.7/lib-dynload<br>/usr/local/lib/python2.7=
/dist-packages<br>/usr/lib/python2.7/dist-packages<br>/usr/lib/python2.7/dis=
t-packages/gtk-2.0<br>/usr/lib/python2.7/dist-packages/wx-3.0-gtk3<br></div>=
<div><br></div><div>I should also mention that my approach to date has been t=
o use&nbsp;PyBOMBS to install GNU Radio, after installing UHD driver v3.15.0=
.0 from source.&nbsp; However, both times I have attempted this, the PyBOMBS=
 installer has asked me whether I want to rebuild UHD from source or keep th=
e existing binary.&nbsp; When I choose "keep existing", the installer crashe=
s out with an error message (both times).</div><div><br></div><div>Brendan.<=
/div><div>&nbsp; &nbsp;</div><div><br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 19, 2021 at 11:58 PM M=
arcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 04/19/2021 03:15 AM,
      <a href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_blank">b=
rendan.horsfield@vectalabs.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <p>Hi All,</p>
      <p>I have just upgraded my laptop to the latest version of GNU
        Radio Companion (ver 3.8.2.0 (Python 3.6.9)), and am now trying
        to use it to monitor a block of spectrum with my USRP B210.
        Unfortunately the flowgraph won=E2=80=99t run (even though it ran in=
 my
        old GNU Radio setup), and instead prints the following message
        to the console:</p>
      <p>linux; GNU C++ version 7.3.0; Boost_106501;
        UHD_003.010.003.000-0-unknown</p>
      <p>UHD Warning:</p>
      <p> EnvironmentError: IOError: Could not find path for image:
        usrp_b200_fw.hex</p>
      <p> Using images directory: &lt;no images directory located&gt;</p>
      <p> Set the environment variable 'UHD_IMAGES_DIR' appropriately or
        follow the below instructions to download the images package.</p>
      <p> Please run:</p>
      <p> "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"</p>=

      <p>Traceback (most recent call last):</p>
      <p> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py",
        line 244, in &lt;module&gt;</p>
      <p> main()</p>
      <p> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py",
        line 220, in main</p>
      <p> tb =3D top_block_cls()</p>
      <p> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py",
        line 87, in __init__</p>
      <p> channels=3Dlist(range(0,1)),</p>
      <p> File
        "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line
        125, in constructor_interceptor</p>
      <p> return old_constructor(*args)</p>
      <p> File
        "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line
        3259, in make</p>
      <p> return _uhd_swig.usrp_source_make(device_addr, stream_args,
        issue_stream_cmd_on_start)</p>
      <p>RuntimeError: LookupError: KeyError: No devices found for
        -----&gt;</p>
      <p>Device Address:</p>
      <p> serial: 318425D</p>
      <p>The above message suggests GRC is calling version <strong>003.010.0=
03.000-0</strong>
        of the UHD driver. This is weird, as last week I installed
        version <strong>3.15.0.0</strong> of the UHD driver on my
        laptop, after first uninstalling the old driver (or so I
        thought=E2=80=A6). </p>
      <p>However, if I run uhd_usrp_probe or uhd_find_devices, I get a
        message confirming that I am indeed running v3.15.0.0 of the UHD
        driver:</p>
      <ul>
        <li>
          <p>linux; GNU C++ version 7.5.0; Boost_106501; <strong>UHD_3.15.0.=
HEAD-0-gaea0e2de</strong></p>
        </li>
      </ul>
      <p>If I look in the folder =E2=80=9C/usr/lib/x86_64-linux-gnu/=E2=80=9D=
, I find
        the files <strong>libuhd.so.003.010.003</strong> and <strong>libuhd.=
so.3.15.0</strong>
        are both present =E2=80=94 but I am pretty sure there should only be=
 one
        of them present!</p>
      <p>This =E2=80=9Cdual-install=E2=80=9D problem seems to be fairly comm=
on among
        USRP/GNU Radio users, but so far I haven=E2=80=99t found any actual
        solutions. </p>
      <p>There is also a second error message in the above console
        output: <strong>=E2=80=9CEnvironmentError: IOError: Could not find p=
ath
          for image: usrp_b200_fw.hex=E2=80=9D</strong>. This is baffling, a=
s I
        have run the script
        =E2=80=9C/usr/local/lib/uhd/utils/uhd_images_downloader.py=E2=80=9C t=
hree times,
        and am confident that the FPGA images have downloaded
        successfully (for the record, they are in
        /usr/local/share/uhd/images).</p>
      <p>If anyone can tell me how to resolve these problems, I would be
        very grateful!</p>
      <p>Regards,</p>
      <p>Brendan. </p>
      <br>
    </blockquote>
    That means that the version of Gnu Radio you used to produce
    whatever app you have is linked against UHD 3.10.3, whereas all<br>
    &nbsp; your UHD *utilities* are linked against the newer version.<br>
    <br>
    What happens when you run:<br>
    <br>
    gnuradio-config-info -v<br>
    <br>
    What is in your PYTHONPATH?&nbsp; Is it perhaps pointing to older python=

    code, and you're picking up older (very older) python modules that<br>
    &nbsp; are themselves linked against both an older GR and older UHD?<br>=

    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-17BF4EAD-A849-4766-902B-94FF4F015038--

--===============7187109250473127754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7187109250473127754==--
