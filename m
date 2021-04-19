Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6A3364D86
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 00:12:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5944384B25
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 18:12:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YxBoPqUF";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id D57B5383EFE
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 18:11:41 -0400 (EDT)
Received: by mail-qk1-f170.google.com with SMTP id o5so37539350qkb.0
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 15:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=sliN910n5tdFt7j0eQiBRnkDuYHSJQoKi4FBQqaHfYo=;
        b=YxBoPqUFbujMcxoj25bk+JMQ2xPMGgiaGGzX9kwLeC1pNur4oxoJpgoSsjANIB68Xg
         o+r351P6AA3cpL5/spmiztPtzOHvTPdPqsnNaLLJ7yOAuESsxgAOCOFRv+mOsmHuZHmJ
         qNwG7T0JI2pGx9/lEokyvLLvgSlzfYYFBl3BFCMXI53xcg528eZCLMLSeBnJQRYCvzA5
         ihXVaKgYXq9cSUFBgCo37Ogh3vTYUR5IuiyJSjtzdJub1jYnt9wITPiSOVj8H4Hcumzz
         4W+EeURgsbo6UZK3zTzbcAMES4D92rb0Cm5Vb6n9bcXeb8IwiouRKiR1a+FskIflN9GJ
         Cm/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=sliN910n5tdFt7j0eQiBRnkDuYHSJQoKi4FBQqaHfYo=;
        b=r0G0z0B/a/5vRiE0wlmCL0nI6U/iQFYxqi3IaMHBYE3AmAJT4hJqXqLvor+CRac/cq
         oYPa5gy3ogrdBY6N8NPzPCdzJNFcz92r364kPQ4osMBucTv80fGyHaDHGssiUEqYNIAf
         aXCMrBFZnVT+wBfO9q1bxPIplbSVu/D3XzwKbEMDsqOiZBT0fJ3SRg3/5pO7FK6Ib4Sg
         setMzhhFzPmyNbkcDL4Z81HvYAZAzg0+c35ZT2BfUT7MECgu1MlNnmNDUY2hEjL1ahr5
         +NKxmQaNvDMx+EC5jJDMA1QG3mV85TAw6WN7CGREdhks9fZ+bHoh9RF1ZcU26XapsIZZ
         gcaQ==
X-Gm-Message-State: AOAM532l57Ylce3W7uG21WAca0txXeyRoR9Ie0/1hq05POBXKQzEW/sI
	SHWGJdX5JrLImFCHwWi1Iq3sIbId9tAUvg==
X-Google-Smtp-Source: ABdhPJzResvxV6OO5o23ciy4WmWc+Edaj24Xt2fSNFqbcZRAD1viTlsZeLhEaEXU6ikZsWDzqHajYQ==
X-Received: by 2002:a37:a1c4:: with SMTP id k187mr9361105qke.448.1618870301123;
        Mon, 19 Apr 2021 15:11:41 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id h65sm10730048qkd.112.2021.04.19.15.11.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 15:11:40 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Apr 2021 18:11:40 -0400
Message-Id: <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com>
References: <8BD61B25-5BDD-4864-8C30-B1C133F513F2@gmail.com>
In-Reply-To: <8BD61B25-5BDD-4864-8C30-B1C133F513F2@gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: J3EFQCKURIVJYB6L347W7QB4BZMIDSPX
X-Message-ID-Hash: J3EFQCKURIVJYB6L347W7QB4BZMIDSPX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J3EFQCKURIVJYB6L347W7QB4BZMIDSPX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2781407250636309035=="


--===============2781407250636309035==
Content-Type: multipart/alternative; boundary=Apple-Mail-39DFA1C9-7528-417C-9D5A-67B8F5D77758
Content-Transfer-Encoding: 7bit


--Apple-Mail-39DFA1C9-7528-417C-9D5A-67B8F5D77758
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

so if you run Python interactively then:

Import uhd=20

Then look at uhd.__file__

What location is it getting UHD from?

Sent from my iPhone

> On Apr 19, 2021, at 6:01 PM, Marcus D Leech <patchvonbraun@gmail.com> wrot=
e:
>=20
> =EF=BB=BFMy guess is that PyBombs is finding the old UHD and using that to=
 build GR.=20
>=20
> Sent from my iPhone
>=20
>>> On Apr 19, 2021, at 5:58 PM, Brendan Horsfield <brendan.horsfield@vectal=
abs.com> wrote:
>>>=20
>> =EF=BB=BF
>> Hi Marcus,
>>=20
>> Running gnuradio-config-info -v returns the following:  v3.8.2.0-112-ge20=
ffa3c
>>=20
>> My PYTHONPATH is as follows:
>>=20
>> /usr/local/lib/python3.6/dist-packages
>> /usr/lib/python2.7
>> /usr/lib/python2.7/plat-x86_64-linux-gnu
>> /usr/lib/python2.7/lib-tk
>> /usr/lib/python2.7/lib-old
>> /usr/lib/python2.7/lib-dynload
>> /usr/local/lib/python2.7/dist-packages
>> /usr/lib/python2.7/dist-packages
>> /usr/lib/python2.7/dist-packages/gtk-2.0
>> /usr/lib/python2.7/dist-packages/wx-3.0-gtk3
>>=20
>> I should also mention that my approach to date has been to use PyBOMBS to=
 install GNU Radio, after installing UHD driver v3.15.0.0 from source.  Howe=
ver, both times I have attempted this, the PyBOMBS installer has asked me wh=
ether I want to rebuild UHD from source or keep the existing binary.  When I=
 choose "keep existing", the installer crashes out with an error message (bo=
th times).
>>=20
>> Brendan.
>>   =20
>>=20
>>=20
>>> On Mon, Apr 19, 2021 at 11:58 PM Marcus D. Leech <patchvonbraun@gmail.co=
m> wrote:
>>> On 04/19/2021 03:15 AM, brendan.horsfield@vectalabs.com wrote:
>>>> Hi All,
>>>>=20
>>>> I have just upgraded my laptop to the latest version of GNU Radio Compa=
nion (ver 3.8.2.0 (Python 3.6.9)), and am now trying to use it to monitor a b=
lock of spectrum with my USRP B210. Unfortunately the flowgraph won=E2=80=99=
t run (even though it ran in my old GNU Radio setup), and instead prints the=
 following message to the console:
>>>>=20
>>>> linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unkno=
wn
>>>>=20
>>>> UHD Warning:
>>>>=20
>>>> EnvironmentError: IOError: Could not find path for image: usrp_b200_fw.=
hex
>>>>=20
>>>> Using images directory: <no images directory located>
>>>>=20
>>>> Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow t=
he below instructions to download the images package.
>>>>=20
>>>> Please run:
>>>>=20
>>>> "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>>>>=20
>>>> Traceback (most recent call last):
>>>>=20
>>>> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 244,=
 in <module>
>>>>=20
>>>> main()
>>>>=20
>>>> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 220,=
 in main
>>>>=20
>>>> tb =3D top_block_cls()
>>>>=20
>>>> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 87, i=
n __init__
>>>>=20
>>>> channels=3Dlist(range(0,1)),
>>>>=20
>>>> File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line 12=
5, in constructor_interceptor
>>>>=20
>>>> return old_constructor(*args)
>>>>=20
>>>> File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line 32=
59, in make
>>>>=20
>>>> return _uhd_swig.usrp_source_make(device_addr, stream_args, issue_strea=
m_cmd_on_start)
>>>>=20
>>>> RuntimeError: LookupError: KeyError: No devices found for ----->
>>>>=20
>>>> Device Address:
>>>>=20
>>>> serial: 318425D
>>>>=20
>>>> The above message suggests GRC is calling version 003.010.003.000-0 of t=
he UHD driver. This is weird, as last week I installed version 3.15.0.0 of t=
he UHD driver on my laptop, after first uninstalling the old driver (or so I=
 thought=E2=80=A6).
>>>>=20
>>>> However, if I run uhd_usrp_probe or uhd_find_devices, I get a message c=
onfirming that I am indeed running v3.15.0.0 of the UHD driver:
>>>>=20
>>>> linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de=

>>>>=20
>>>> If I look in the folder =E2=80=9C/usr/lib/x86_64-linux-gnu/=E2=80=9D, I=
 find the files libuhd.so.003.010.003 and libuhd.so.3.15.0 are both present =E2=
=80=94 but I am pretty sure there should only be one of them present!
>>>>=20
>>>> This =E2=80=9Cdual-install=E2=80=9D problem seems to be fairly common a=
mong USRP/GNU Radio users, but so far I haven=E2=80=99t found any actual sol=
utions.
>>>>=20
>>>> There is also a second error message in the above console output: =E2=80=
=9CEnvironmentError: IOError: Could not find path for image: usrp_b200_fw.he=
x=E2=80=9D. This is baffling, as I have run the script =E2=80=9C/usr/local/l=
ib/uhd/utils/uhd_images_downloader.py=E2=80=9C three times, and am confident=
 that the FPGA images have downloaded successfully (for the record, they are=
 in /usr/local/share/uhd/images).
>>>>=20
>>>> If anyone can tell me how to resolve these problems, I would be very gr=
ateful!
>>>>=20
>>>> Regards,
>>>>=20
>>>> Brendan.
>>>>=20
>>>>=20
>>> That means that the version of Gnu Radio you used to produce whatever ap=
p you have is linked against UHD 3.10.3, whereas all
>>>   your UHD *utilities* are linked against the newer version.
>>>=20
>>> What happens when you run:
>>>=20
>>> gnuradio-config-info -v
>>>=20
>>> What is in your PYTHONPATH?  Is it perhaps pointing to older python code=
, and you're picking up older (very older) python modules that
>>>   are themselves linked against both an older GR and older UHD?
>>>=20
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-39DFA1C9-7528-417C-9D5A-67B8F5D77758
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">so if you run Python interactively then:<di=
v><br></div><div>Import uhd&nbsp;</div><div><br></div><div>Then look at uhd.=
__file__</div><div><br></div><div>What location is it getting UHD from?<br><=
br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquot=
e type=3D"cite">On Apr 19, 2021, at 6:01 PM, Marcus D Leech &lt;patchvonbrau=
n@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><=
div dir=3D"ltr">=EF=BB=BF<meta http-equiv=3D"content-type" content=3D"text/h=
tml; charset=3Dutf-8">My guess is that PyBombs is finding the old UHD and us=
ing that to build GR.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div=
><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 19, 2021, at 5:58 PM,=
 Brendan Horsfield &lt;brendan.horsfield@vectalabs.com&gt; wrote:<br><br></b=
lockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=
=3D"ltr">Hi&nbsp;Marcus,<div><br></div><div>Running gnuradio-config-info -v r=
eturns the following:&nbsp;&nbsp;<b>v3.8.2.0-112-ge20ffa3c</b><br></div><div=
><br></div><div>My PYTHONPATH is as follows:</div><div><br></div><div>/usr/l=
ocal/lib/python3.6/dist-packages<br>/usr/lib/python2.7<br>/usr/lib/python2.7=
/plat-x86_64-linux-gnu<br>/usr/lib/python2.7/lib-tk<br>/usr/lib/python2.7/li=
b-old<br>/usr/lib/python2.7/lib-dynload<br>/usr/local/lib/python2.7/dist-pac=
kages<br>/usr/lib/python2.7/dist-packages<br>/usr/lib/python2.7/dist-package=
s/gtk-2.0<br>/usr/lib/python2.7/dist-packages/wx-3.0-gtk3<br></div><div><br>=
</div><div>I should also mention that my approach to date has been to use&nb=
sp;PyBOMBS to install GNU Radio, after installing UHD driver v3.15.0.0 from s=
ource.&nbsp; However, both times I have attempted this, the PyBOMBS installe=
r has asked me whether I want to rebuild UHD from source or keep the existin=
g binary.&nbsp; When I choose "keep existing", the installer crashes out wit=
h an error message (both times).</div><div><br></div><div>Brendan.</div><div=
>&nbsp; &nbsp;</div><div><br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 19, 2021 at 11:58 PM Marcus D.=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
</div></blockquote></div></blockquote></div></body></html>=

--Apple-Mail-39DFA1C9-7528-417C-9D5A-67B8F5D77758--

--===============2781407250636309035==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2781407250636309035==--
