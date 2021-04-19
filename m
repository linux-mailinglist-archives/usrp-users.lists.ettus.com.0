Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3558B364D9D
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 00:22:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71CBF384DCC
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 18:22:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="eQWs26Cx";
	dkim-atps=neutral
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	by mm2.emwd.com (Postfix) with ESMTPS id C4B6A384B7D
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 18:21:58 -0400 (EDT)
Received: by mail-ua1-f47.google.com with SMTP id s19so10262864uaq.4
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 15:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xE8Dyjwu54kTY1dLwwowIzo8q6x4F20SfCQo949eheI=;
        b=eQWs26CxnNvNSEOpKniZDSkaLzePW7YfIAKCVXZhIP65bMnZvTdYhSuJaT5yWhMsYs
         BPbPqzckeP1bw2ri+cRVaGCLlAcEUIhfF5HicZeYnbubC7Dd9/C/Pi4/s8+Eo4gj8R0D
         O3dw2WxNUIGmhAa1WAZPckJptX/k+TUp/ZppMB7j8vw8A+vKGqQo2Me1dVQvYKFqfai3
         p4+MMk18yW93EjgJNY5URauN5jrCTP3mH41/rb5k5UZq1qi4K8JvEYMdVgHOLmHUDaaP
         NuAZk2fosxNV1cIp3/m4EmqY+uuIvcyGTKceGF0xelmqmrzNIzMgDuAftT68pcdcUz9a
         4GUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xE8Dyjwu54kTY1dLwwowIzo8q6x4F20SfCQo949eheI=;
        b=ogcuEgCfr654plIAro1tUXtvz/dRY+ePsfYAv2EiF3DS4J+DSe+sX8dYiBI70Ehwu8
         9m10/sNGdNWxpDQmNWn7hfvwiF+gM8tjKAI4J63xkSTp8ALzVjZZws+tJ29DgFtFnEoK
         8tseRE2PfInYmA7T5hQI8nYhh/jA1UgAmVCJT+vlLYoN19WFIlJc/4+vgG05lguwnFTD
         SwZfZSMXxEWo9iNACyfBSHs25+7PmaE6FjQnuzlMw44t5klqud+OfWEcDHK6/63XWIHt
         O66DtQS1HLIr1RjuS/cMfYKwfetxGeE/vvGJjr860iBBIOFBgLg/cRTcHVdIXpNhH41c
         JBgg==
X-Gm-Message-State: AOAM5304dEHg5B4R1e6h0u+OhFqBfJE4nGmTU/OfAXjGSZTh5SEYuRiT
	L9ZIuoGPAIJ7lAjd7A5YwfZd8Q0jcZiMoWQ2go0RCta9lkmKV75f
X-Google-Smtp-Source: ABdhPJwVzzEuvIElUwzJtI6m4CpMsVVmr/pX5LwRjetX5U0oX7q2u90RfFvJ0BrFDwmfZufjTCho5PQ3Lqp5orCkoQU=
X-Received: by 2002:ab0:7003:: with SMTP id k3mr2269507ual.134.1618870918243;
 Mon, 19 Apr 2021 15:21:58 -0700 (PDT)
MIME-Version: 1.0
References: <8BD61B25-5BDD-4864-8C30-B1C133F513F2@gmail.com> <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com>
In-Reply-To: <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Tue, 20 Apr 2021 08:21:47 +1000
Message-ID: <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: 35RGM6GWUO6N3PD3RHHNWSNIKDGQWNIY
X-Message-ID-Hash: 35RGM6GWUO6N3PD3RHHNWSNIKDGQWNIY
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/35RGM6GWUO6N3PD3RHHNWSNIKDGQWNIY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6982109307944525986=="

--===============6982109307944525986==
Content-Type: multipart/alternative; boundary="00000000000004fb2005c05ac25a"

--00000000000004fb2005c05ac25a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Importing uhd in Python 3:
/usr/local/lib/python3.6/dist-packages/uhd-1.1.0-py3.6-linux-x86_64.egg/
uhd.cpython-36m-x86_64-linux-gnu.so

(Note that this is an alternative Python UHD module written by Christian
Hahn, which I have been evaluating for the last few days.)

Trying to import uhd in Python 2 (which I never use) returns an error:

Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/usr/local/lib/python2.7/dist-packages/uhd/__init__.py", line 10,
in <module>
  File "/usr/local/lib/python2.7/dist-packages/uhd/types.py", line 10, in
<module>
    # "__iter__" and "next" attributes instead.
ImportError: cannot import name libpyuhd

Brendan.


On Tue, Apr 20, 2021 at 8:11 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> so if you run Python interactively then:
>
> Import uhd
>
> Then look at uhd.__file__
>
> What location is it getting UHD from?
>
> Sent from my iPhone
>
> On Apr 19, 2021, at 6:01 PM, Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
> =EF=BB=BFMy guess is that PyBombs is finding the old UHD and using that t=
o build
> GR.
>
> Sent from my iPhone
>
> On Apr 19, 2021, at 5:58 PM, Brendan Horsfield <
> brendan.horsfield@vectalabs.com> wrote:
>
> =EF=BB=BF
> Hi Marcus,
>
> Running gnuradio-config-info -v returns the following:
> *v3.8.2.0-112-ge20ffa3c*
>
> My PYTHONPATH is as follows:
>
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
>
> I should also mention that my approach to date has been to use PyBOMBS to
> install GNU Radio, after installing UHD driver v3.15.0.0 from source.
> However, both times I have attempted this, the PyBOMBS installer has aske=
d
> me whether I want to rebuild UHD from source or keep the existing binary.
> When I choose "keep existing", the installer crashes out with an error
> message (both times).
>
> Brendan.
>
>
>
> On Mon, Apr 19, 2021 at 11:58 PM Marcus D. Leech <patchvonbraun@gmail.com=
>
> wrote:
>
>> On 04/19/2021 03:15 AM, brendan.horsfield@vectalabs.com wrote:
>>
>> Hi All,
>>
>> I have just upgraded my laptop to the latest version of GNU Radio
>> Companion (ver 3.8.2.0 (Python 3.6.9)), and am now trying to use it to
>> monitor a block of spectrum with my USRP B210. Unfortunately the flowgra=
ph
>> won=E2=80=99t run (even though it ran in my old GNU Radio setup), and in=
stead
>> prints the following message to the console:
>>
>> linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknow=
n
>>
>> UHD Warning:
>>
>> EnvironmentError: IOError: Could not find path for image: usrp_b200_fw.h=
ex
>>
>> Using images directory: <no images directory located>
>>
>> Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow th=
e
>> below instructions to download the images package.
>>
>> Please run:
>>
>> "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>>
>> Traceback (most recent call last):
>>
>> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 244,
>> in <module>
>>
>> main()
>>
>> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 220,
>> in main
>>
>> tb =3D top_block_cls()
>>
>> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 87, i=
n
>> __init__
>>
>> channels=3Dlist(range(0,1)),
>>
>> File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line 125=
,
>> in constructor_interceptor
>>
>> return old_constructor(*args)
>>
>> File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line
>> 3259, in make
>>
>> return _uhd_swig.usrp_source_make(device_addr, stream_args,
>> issue_stream_cmd_on_start)
>>
>> RuntimeError: LookupError: KeyError: No devices found for ----->
>>
>> Device Address:
>>
>> serial: 318425D
>>
>> The above message suggests GRC is calling version *003.010.003.000-0* of
>> the UHD driver. This is weird, as last week I installed version
>> *3.15.0.0* of the UHD driver on my laptop, after first uninstalling the
>> old driver (or so I thought=E2=80=A6).
>>
>> However, if I run uhd_usrp_probe or uhd_find_devices, I get a message
>> confirming that I am indeed running v3.15.0.0 of the UHD driver:
>>
>>    -
>>
>>    linux; GNU C++ version 7.5.0; Boost_106501;
>>    *UHD_3.15.0.HEAD-0-gaea0e2de*
>>
>> If I look in the folder =E2=80=9C/usr/lib/x86_64-linux-gnu/=E2=80=9D, I =
find the files
>> *libuhd.so.003.010.003* and *libuhd.so.3.15.0* are both present =E2=80=
=94 but I
>> am pretty sure there should only be one of them present!
>>
>> This =E2=80=9Cdual-install=E2=80=9D problem seems to be fairly common am=
ong USRP/GNU
>> Radio users, but so far I haven=E2=80=99t found any actual solutions.
>>
>> There is also a second error message in the above console output: *=E2=
=80=9CEnvironmentError:
>> IOError: Could not find path for image: usrp_b200_fw.hex=E2=80=9D*. This=
 is
>> baffling, as I have run the script
>> =E2=80=9C/usr/local/lib/uhd/utils/uhd_images_downloader.py=E2=80=9C thre=
e times, and am
>> confident that the FPGA images have downloaded successfully (for the
>> record, they are in /usr/local/share/uhd/images).
>>
>> If anyone can tell me how to resolve these problems, I would be very
>> grateful!
>>
>> Regards,
>>
>> Brendan.
>>
>> That means that the version of Gnu Radio you used to produce whatever ap=
p
>> you have is linked against UHD 3.10.3, whereas all
>>   your UHD *utilities* are linked against the newer version.
>>
>> What happens when you run:
>>
>> gnuradio-config-info -v
>>
>> What is in your PYTHONPATH?  Is it perhaps pointing to older python code=
,
>> and you're picking up older (very older) python modules that
>>   are themselves linked against both an older GR and older UHD?
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000004fb2005c05ac25a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Importing uhd in Python 3:=C2=A0 /usr/local/lib/python3.6/=
dist-packages/uhd-1.1.0-py3.6-linux-x86_64.egg/<a href=3D"http://uhd.cpytho=
n-36m-x86_64-linux-gnu.so">uhd.cpython-36m-x86_64-linux-gnu.so</a><div><br>=
</div><div>(Note that this is an alternative Python UHD module written by C=
hristian Hahn, which I have been evaluating for the last few days.)=C2=A0 =
=C2=A0</div><div><br></div><div>Trying to import uhd in Python 2 (which I n=
ever use) returns an error:</div><div><br></div><div>Traceback (most recent=
 call last):<br>=C2=A0 File &quot;&lt;stdin&gt;&quot;, line 1, in &lt;modul=
e&gt;<br>=C2=A0 File &quot;/usr/local/lib/python2.7/dist-packages/uhd/__ini=
t__.py&quot;, line 10, in &lt;module&gt;<br>=C2=A0 File &quot;/usr/local/li=
b/python2.7/dist-packages/uhd/types.py&quot;, line 10, in &lt;module&gt;<br=
>=C2=A0 =C2=A0 # &quot;__iter__&quot; and &quot;next&quot; attributes inste=
ad.<br>ImportError: cannot import name libpyuhd<br></div><div><br></div><di=
v>Brendan.</div><div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Tue, Apr 20, 2021 at 8:11 AM Marcus D Lee=
ch &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"auto">so if you run Python interactively then:<div><br></div><div=
>Import uhd=C2=A0</div><div><br></div><div>Then look at uhd.__file__</div><=
div><br></div><div>What location is it getting UHD from?<br><br><div dir=3D=
"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cit=
e">On Apr 19, 2021, at 6:01 PM, Marcus D Leech &lt;<a href=3D"mailto:patchv=
onbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BFMy guess is that PyBombs is finding the old UHD and using that to bui=
ld GR.=C2=A0<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"l=
tr"><br><blockquote type=3D"cite">On Apr 19, 2021, at 5:58 PM, Brendan Hors=
field &lt;<a href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_bla=
nk">brendan.horsfield@vectalabs.com</a>&gt; wrote:<br><br></blockquote></di=
v><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi=
=C2=A0Marcus,<div><br></div><div>Running gnuradio-config-info -v returns th=
e following:=C2=A0=C2=A0<b>v3.8.2.0-112-ge20ffa3c</b><br></div><div><br></d=
iv><div>My PYTHONPATH is as follows:</div><div><br></div><div>/usr/local/li=
b/python3.6/dist-packages<br>/usr/lib/python2.7<br>/usr/lib/python2.7/plat-=
x86_64-linux-gnu<br>/usr/lib/python2.7/lib-tk<br>/usr/lib/python2.7/lib-old=
<br>/usr/lib/python2.7/lib-dynload<br>/usr/local/lib/python2.7/dist-package=
s<br>/usr/lib/python2.7/dist-packages<br>/usr/lib/python2.7/dist-packages/g=
tk-2.0<br>/usr/lib/python2.7/dist-packages/wx-3.0-gtk3<br></div><div><br></=
div><div>I should also mention that my approach to date has been to use=C2=
=A0PyBOMBS to install GNU Radio, after installing UHD driver v3.15.0.0 from=
 source.=C2=A0 However, both times I have attempted this, the PyBOMBS insta=
ller has asked me whether I want to rebuild UHD from source or keep the exi=
sting binary.=C2=A0 When I choose &quot;keep existing&quot;, the installer =
crashes out with an error message (both times).</div><div><br></div><div>Br=
endan.</div><div>=C2=A0 =C2=A0</div><div><br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 19, 2021 at =
11:58 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" tar=
get=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 04/19/2021 03:15 AM,
      <a href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_blank">=
brendan.horsfield@vectalabs.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <p>Hi All,</p>
      <p>I have just upgraded my laptop to the latest version of GNU
        Radio Companion (ver 3.8.2.0 (Python 3.6.9)), and am now trying
        to use it to monitor a block of spectrum with my USRP B210.
        Unfortunately the flowgraph won=E2=80=99t run (even though it ran i=
n my
        old GNU Radio setup), and instead prints the following message
        to the console:</p>
      <p>linux; GNU C++ version 7.3.0; Boost_106501;
        UHD_003.010.003.000-0-unknown</p>
      <p>UHD Warning:</p>
      <p> EnvironmentError: IOError: Could not find path for image:
        usrp_b200_fw.hex</p>
      <p> Using images directory: &lt;no images directory located&gt;</p>
      <p> Set the environment variable &#39;UHD_IMAGES_DIR&#39; appropriate=
ly or
        follow the below instructions to download the images package.</p>
      <p> Please run:</p>
      <p> &quot;/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.p=
y&quot;</p>
      <p>Traceback (most recent call last):</p>
      <p> File &quot;/home/anyone/Documents/Brendan/GNU-Radio/top_block.py&=
quot;,
        line 244, in &lt;module&gt;</p>
      <p> main()</p>
      <p> File &quot;/home/anyone/Documents/Brendan/GNU-Radio/top_block.py&=
quot;,
        line 220, in main</p>
      <p> tb =3D top_block_cls()</p>
      <p> File &quot;/home/anyone/Documents/Brendan/GNU-Radio/top_block.py&=
quot;,
        line 87, in __init__</p>
      <p> channels=3Dlist(range(0,1)),</p>
      <p> File
        &quot;/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py&quot;=
, line
        125, in constructor_interceptor</p>
      <p> return old_constructor(*args)</p>
      <p> File
        &quot;/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py&quot;=
, line
        3259, in make</p>
      <p> return _uhd_swig.usrp_source_make(device_addr, stream_args,
        issue_stream_cmd_on_start)</p>
      <p>RuntimeError: LookupError: KeyError: No devices found for
        -----&gt;</p>
      <p>Device Address:</p>
      <p> serial: 318425D</p>
      <p>The above message suggests GRC is calling version <strong>003.010.=
003.000-0</strong>
        of the UHD driver. This is weird, as last week I installed
        version <strong>3.15.0.0</strong> of the UHD driver on my
        laptop, after first uninstalling the old driver (or so I
        thought=E2=80=A6). </p>
      <p>However, if I run uhd_usrp_probe or uhd_find_devices, I get a
        message confirming that I am indeed running v3.15.0.0 of the UHD
        driver:</p>
      <ul>
        <li>
          <p>linux; GNU C++ version 7.5.0; Boost_106501; <strong>UHD_3.15.0=
.HEAD-0-gaea0e2de</strong></p>
        </li>
      </ul>
      <p>If I look in the folder =E2=80=9C/usr/lib/x86_64-linux-gnu/=E2=80=
=9D, I find
        the files <strong>libuhd.so.003.010.003</strong> and <strong>libuhd=
.so.3.15.0</strong>
        are both present =E2=80=94 but I am pretty sure there should only b=
e one
        of them present!</p>
      <p>This =E2=80=9Cdual-install=E2=80=9D problem seems to be fairly com=
mon among
        USRP/GNU Radio users, but so far I haven=E2=80=99t found any actual
        solutions. </p>
      <p>There is also a second error message in the above console
        output: <strong>=E2=80=9CEnvironmentError: IOError: Could not find =
path
          for image: usrp_b200_fw.hex=E2=80=9D</strong>. This is baffling, =
as I
        have run the script
        =E2=80=9C/usr/local/lib/uhd/utils/uhd_images_downloader.py=E2=80=9C=
 three times,
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
    =C2=A0 your UHD *utilities* are linked against the newer version.<br>
    <br>
    What happens when you run:<br>
    <br>
    gnuradio-config-info -v<br>
    <br>
    What is in your PYTHONPATH?=C2=A0 Is it perhaps pointing to older pytho=
n
    code, and you&#39;re picking up older (very older) python modules that<=
br>
    =C2=A0 are themselves linked against both an older GR and older UHD?<br=
>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></blockquote></div></div></blockquote></div>

--00000000000004fb2005c05ac25a--

--===============6982109307944525986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6982109307944525986==--
