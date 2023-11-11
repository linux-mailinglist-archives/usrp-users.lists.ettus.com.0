Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3287E8B65
	for <lists+usrp-users@lfdr.de>; Sat, 11 Nov 2023 16:45:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2157B384D9B
	for <lists+usrp-users@lfdr.de>; Sat, 11 Nov 2023 10:45:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699717509; bh=CMqYlCnUr0gW6A/skd/Zt89Y3G5HLhXL/jt6BC9uGHM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=z+00ye0UY1HBMBlg+1Z6jUnsGro0nQGwEJnu43wETKGOrb94998FLpMM89Zpd9Gzm
	 yGLhbYKixLiww8GIDlC6SnXcHgcxQef9Ambgni1xedDrqoYSmMj0SUg3RxPuuQITVf
	 UF7XgOPaz+Yy/tBZeQPqiSQt4piKIYUTCKwvTYbZmJphCwGjbVjFV+ii50/QcjjLyq
	 sq4TxvHfgPRZxj7ugUYMFiVFfN3VL05pnp+VcUDw35KFdg6JTDuZusf/trsAmvVowe
	 cQ8UhWnpUVaUqXPAfKENtsfb94ZE8lRLA5siRp2RWpRggBRcG5Jk2pMkQftKucTDvb
	 nh8Oin6INRsfA==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 937DB384D87
	for <usrp-users@lists.ettus.com>; Sat, 11 Nov 2023 10:45:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CPvPZwwB";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-9d267605ceeso476154966b.2
        for <usrp-users@lists.ettus.com>; Sat, 11 Nov 2023 07:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699717500; x=1700322300; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jVMallWCaSjFtxGORz9jUBgM+BNwdviNEksHQ1kUMJg=;
        b=CPvPZwwBRt3ddTbHge4pxyJy+H47K86yE42XrVR8jLjFAKrHrGNmkrKUG2ITbbXVrg
         meMbcnQ4z7YiczNN8ULAFXjLp5c/TWyLkZvSIzRlObaxEwVk4zeNBXoqn87Klg9LfpMV
         BUb8PMcQq7Mlb16gmGqx/OR+7yYS7mE/LAw50DsJ5HSaYSfCNEOf2trQpFvDX6paZ+Lr
         Ino2W8iDVRoZSGu53FGKsYP5YH5y/uVvZ8Wz9grv3G9jxLK71jNiHrw4GcIcvEI3/tKk
         0ycRb+iqxGStCnycCcCIzfZ12yUz4G5BliWLjL537GtdnmrwzmR88DbDqynYwRSVt/0a
         pNwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699717500; x=1700322300;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jVMallWCaSjFtxGORz9jUBgM+BNwdviNEksHQ1kUMJg=;
        b=sYPRVXvlhAguyg8+jNg2tQE7t2Mrfgsq9fD5s2oGGV42fuTZBI0zdUcLTIL1RFn5j1
         OOn9mijI40nphmbwic3zUurKLxW9Y0s0a2uxqG6j7TuBxd2M+YuQIwUPkexTj3dUrrsm
         pH8hQuWKv4NjHRS6/mE4nVL7ueKJrVrzB8JjYSGFIiaVk42/LFdRL+vnEzepgONnRTLL
         z/2JK16s0F+1yXPOBatweA0twF4FuSHifIUIYFbkzsCbm4An9fWwLOuyu1mEE30lP79U
         +MACDTM3lHJ3YfJi9Qn1hN3tbzTlsyszsGH32XRkEyfaBz1ZTTv0dviJV72JSQH3DuFL
         a6hw==
X-Gm-Message-State: AOJu0Yxcch2MgU+/PaSxg0m577oKrwOUgSeET9g4Fof0r6mgxDSx+lec
	uAEP5RJEwiOdvUPqWhHXMLEme3Wb5KvswbYOuFJynWRl
X-Google-Smtp-Source: AGHT+IFFTAGNQ5sB3My5Nyw+w7e5NcKOcJDZR5MxsO4UbVhlLvCRE0rrAvkcbNITiJYI7B2R7zxYOEP8ovw3g0jcRZg=
X-Received: by 2002:a17:906:410e:b0:9bf:b022:dc7 with SMTP id
 j14-20020a170906410e00b009bfb0220dc7mr1654182ejk.48.1699717499901; Sat, 11
 Nov 2023 07:44:59 -0800 (PST)
MIME-Version: 1.0
References: <CAJx0LdWSR5UORFDNLvhvY_r-TZOo6Okqr9wKN18==+UxiR64uQ@mail.gmail.com>
 <d9fbc0fc-6fb2-4a32-aedd-d40ce22e00e3@gmail.com>
In-Reply-To: <d9fbc0fc-6fb2-4a32-aedd-d40ce22e00e3@gmail.com>
From: German Farinas <german.farinas@gmail.com>
Date: Sat, 11 Nov 2023 10:44:49 -0500
Message-ID: <CAJx0LdUiVUpiQhLCBSunf=K13F8pZjGAw57QHBWp_4RsKrSdBw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: GY3VGMFICPGJKLFZXOZOMVK2AHO6D72Y
X-Message-ID-Hash: GY3VGMFICPGJKLFZXOZOMVK2AHO6D72Y
X-MailFrom: german.farinas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: The firmware build is not compatible with the host code build
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GY3VGMFICPGJKLFZXOZOMVK2AHO6D72Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4555074334459660779=="

--===============4555074334459660779==
Content-Type: multipart/alternative; boundary="000000000000ccd8f00609e25132"

--000000000000ccd8f00609e25132
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

An update about this issue.

I built from source 3.15 an still gave me the same error. I even created a
virtual machines with Ubuntu 18.04 and 16.04 and install the standard UHD
package, which are older that 3.15 and still same error message. I am
confused. I think there is another kind of problem. With Ubuntu 18.04 (UHD
3.9 I think) when I tried to upload images I just received a shorter error
message:


Error: RuntimeError: Received invalid reply 32 from device.
___________________



On Thu, Nov 9, 2023, 8:21 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> Those Rev numbers are hardware revs, but it may well also indicate that
> its on-board FPGA image is quite old--old enough that
>   modern image-loader tooling cannot cope, which is why a "hill-climbing"
> approach may be necessary.
>
> I'll note that Ubuntu packaged UHD 3.15 for 20.04 (Focal):
>
> https://packages.ubuntu.com/search?suite=3Dfocal&keywords=3Duhd
>
> So, if you can extricate yourself (temporarily) from the UHD 4.5 that you
> likely installed through a PPA, the default
>   UHD package for Ubuntu 20.04 is what you want.
>
>
>
>
> -------- Forwarded Message --------
> Subject: Re: [USRP-users] The firmware build is not compatible with the
> host code build
> Date: Thu, 9 Nov 2023 20:11:41 -0500
> From: German Farinas <german.farinas@gmail.com> <german.farinas@gmail.com=
>
> To: Marcus D. Leech <patchvonbraun@gmail.com> <patchvonbraun@gmail.com>
> speed
> I have two N210s. One of the USRPs N210 is working fine with UHD 4.5, I
> suppose that one is rev4 although it doesn't say it explicitly at the bac=
k
> of the case. However, the other USRP N210 says explicitly rev2 at the bac=
k.
> This one is giving me the error.
>
>
> About the motivation for having UHD 4.5 none in specific. I am just new t=
o
> UHD and I installed it via command line in Ubuntu 20. It was just easier.
> But in the future I may work with X300.
>
>
> On Thu, Nov 9, 2023, 7:59 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 09/11/2023 19:24, German Farinas wrote:
>>
>> I am using UHD 4.5, I may try 3.15 as you suggested. But I don't know ho=
w
>> to install both together. My system is Ubuntu 20.04 LTS.
>>
>> There haven't been any (documented) changes for N210 since UHD 3.13.
>>
>> You may need to build 3.15 from source.    I haven't ever really managed
>> two UHD on the same system at the same time.
>>   Some folks like to use a different install prefix when building, and
>> then set LD_LIBRARY_PATH and friends at runtime.
>>   Some folks use docker containers.
>>
>> What is the motivation for using UHD 4.5?  Unless you have hardware on
>> the same system that is much newer, of course.
>>
>>
>>
>>
>> On Thu, Nov 9, 2023, 7:08 PM Marcus D Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> You may need to stage this from a much earlier rev of UHD. I don=E2=80=
=99t think
>>> there have been any updates to N210 firmware in a long time. So if you =
can
>>> tolerate UHD 3.15 that might be better for you.
>>>
>>> Sent from my iPhone
>>>
>>> On Nov 9, 2023, at 7:05 PM, German Farinas <german.farinas@gmail.com>
>>> wrote:
>>>
>>> =EF=BB=BF
>>> I am trying to upload the image to an usrp N210 rev2.0 but I got the
>>> following error message. Have anyone had the same error before? I need =
some
>>> help with this issue. See the output of the uhd_image_loader below.
>>>
>>> Best,
>>> German
>>>
>>> uhd_image_loader --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
>>>
>>> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>>> UHD_4.5.0.0-0ubuntu1~focal1
>>> [ERROR] [UHD] Exception caught in safe-call.
>>>   in ~usrp2_iface_impl
>>>   at /build/uhd-UJYBdq/uhd-4.5.0.0/host/lib/usrp/usrp2/usrp2_iface.cpp:=
82
>>> this->lock_device(false); -> RuntimeError:
>>> Please update the firmware and FPGA images for your device.
>>> See the application notes for USRP2/N-Series for instructions.
>>> Expected protocol compatibility number [10 to 12], but got 9:
>>> The firmware build is not compatible with the host code build.
>>> Please run:
>>>
>>>  "/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>>>  "/lib/bin/uhd_image_loader" \
>>>     --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
>>>
>>> Error: RuntimeError: Received invalid reply 32 from device.
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ccd8f00609e25132
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>An update about this issue.<div dir=3D"auto"><br></d=
iv><div dir=3D"auto">I built from source 3.15 an still gave me the same err=
or. I even created a virtual machines with Ubuntu 18.04 and 16.04 and insta=
ll the standard UHD package, which are older that 3.15 and still same error=
 message. I am confused. I think there is another kind of problem. With Ubu=
ntu 18.04 (UHD 3.9 I think) when I tried to upload images I just received a=
 shorter error message:</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
<blockquote><div dir=3D"auto"><div><div style=3D"min-width:150px" class=3D"=
elided-text"><blockquote style=3D"min-width:150px;margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">=
<blockquote><div dir=3D"ltr"><div dir=3D"auto"><div dir=3D"auto" style=3D"f=
ont-size:12.8px"><br>Error: RuntimeError: Received invalid reply 32 from de=
vice.</div></div>___________________</div></blockquote></div></blockquote><=
/div></div></div></blockquote></div><br><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 9, 2023, 8:21 PM Marcus D. Le=
ech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><u></u>

 =20

   =20
 =20
  <div>
    Those Rev numbers are hardware revs, but it may well also indicate
    that its on-board FPGA image is quite old--old enough that<br>
    =C2=A0 modern image-loader tooling cannot cope, which is why a
    &quot;hill-climbing&quot; approach may be necessary.<br>
    <br>
    I&#39;ll note that Ubuntu packaged UHD 3.15 for 20.04 (Focal):<br>
    <br>
    <a href=3D"https://packages.ubuntu.com/search?suite=3Dfocal&amp;keyword=
s=3Duhd" target=3D"_blank" rel=3D"noreferrer">https://packages.ubuntu.com/s=
earch?suite=3Dfocal&amp;keywords=3Duhd</a><br>
    <br>
    So, if you can extricate yourself (temporarily) from the UHD 4.5
    that you likely installed through a PPA, the default<br>
    =C2=A0 UHD package for Ubuntu 20.04 is what you want.<br>
    <br>
    <br>
    <div><br>
      <br>
      -------- Forwarded Message --------
      <table cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
        <tbody>
          <tr>
            <th valign=3D"BASELINE" nowrap align=3D"RIGHT">Subject:
            </th>
            <td>Re: [USRP-users] The firmware build is not compatible
              with the host code build</td>
          </tr>
          <tr>
            <th valign=3D"BASELINE" nowrap align=3D"RIGHT">Date: </th>
            <td>Thu, 9 Nov 2023 20:11:41 -0500</td>
          </tr>
          <tr>
            <th valign=3D"BASELINE" nowrap align=3D"RIGHT">From: </th>
            <td>German Farinas <a href=3D"mailto:german.farinas@gmail.com" =
target=3D"_blank" rel=3D"noreferrer">&lt;german.farinas@gmail.com&gt;</a></=
td>
          </tr>
          <tr>
            <th valign=3D"BASELINE" nowrap align=3D"RIGHT">To: </th>
            <td>Marcus D. Leech <a href=3D"mailto:patchvonbraun@gmail.com" =
target=3D"_blank" rel=3D"noreferrer">&lt;patchvonbraun@gmail.com&gt;</a></t=
d>
          </tr>
        </tbody>
      </table>
      <br>
      speed<br>
      <div dir=3D"auto">
        <div>I have two N210s. One of the USRPs N210 is working fine
          with UHD 4.5, I suppose that one is rev4 although it doesn&#39;t
          say it explicitly at the back of the case. However, the other
          USRP N210 says explicitly rev2 at the back. This one is giving
          me the error.<br>
          <br>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">About the motivation for having UHD 4.5 none
            in specific. I am just new to UHD and I installed it via
            command line in Ubuntu 20. It was just easier. But in the
            future I may work with X300.</div>
          <br>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 9, 2023, 7:59
              PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.=
com" target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
              <div>
                <div>On 09/11/2023 19:24, German Farinas wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"auto">
                    <div>I am using UHD 4.5, I may try 3.15 as you
                      suggested. But I don&#39;t know how to install both
                      together. My system is Ubuntu 20.04 LTS.
                      <div dir=3D"auto"><br>
                      </div>
                    </div>
                  </div>
                </blockquote>
                There haven&#39;t been any (documented) changes for N210
                since UHD 3.13.=C2=A0 <br>
                <br>
                You may need to build 3.15 from source.=C2=A0=C2=A0=C2=A0 I=
 haven&#39;t
                ever really managed two UHD on the same system at the
                same time.<br>
                =C2=A0 Some folks like to use a different install prefix wh=
en
                building, and then set LD_LIBRARY_PATH and friends at
                runtime.<br>
                =C2=A0 Some folks use docker containers.<br>
                <br>
                What is the motivation for using UHD 4.5?=C2=A0 Unless you
                have hardware on the same system that is much newer, of
                course.<br>
                <br>
                <blockquote type=3D"cite">
                  <div dir=3D"auto">
                    <div>
                      <div dir=3D"auto"><br>
                      </div>
                      <br>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 9=
,
                          2023, 7:08 PM Marcus D Leech &lt;<a href=3D"mailt=
o:patchvonbraun@gmail.com" rel=3D"noreferrer noreferrer noreferrer" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
                          <div dir=3D"auto">You may need to stage this
                            from a much earlier rev of UHD. I don=E2=80=99t
                            think there have been any updates to N210
                            firmware in a long time. So if you can
                            tolerate UHD 3.15 that might be better for
                            you.=C2=A0<br>
                            <br>
                            <div dir=3D"ltr">Sent from my iPhone</div>
                            <div dir=3D"ltr"><br>
                              <blockquote type=3D"cite">On Nov 9, 2023, at
                                7:05 PM, German Farinas &lt;<a href=3D"mail=
to:german.farinas@gmail.com" rel=3D"noreferrer noreferrer noreferrer norefe=
rrer" target=3D"_blank">german.farinas@gmail.com</a>&gt;
                                wrote:<br>
                                <br>
                              </blockquote>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">=EF=BB=BF
                                <div dir=3D"auto">
                                  <div style=3D"font-size:12.8px" dir=3D"au=
to">I am trying to upload the
                                    image to an usrp N210 rev2.0 but I
                                    got the following error message.
                                    Have anyone had the same error
                                    before? I need some help with this
                                    issue. See the output of the
                                    uhd_image_loader below.</div>
                                  <div style=3D"font-size:12.8px" dir=3D"au=
to"><br>
                                  </div>
                                  <div style=3D"font-size:12.8px" dir=3D"au=
to">Best,</div>
                                  <div style=3D"font-size:12.8px" dir=3D"au=
to">German</div>
                                  <div style=3D"font-size:12.8px" dir=3D"au=
to"><br>
                                  </div>
                                  <div style=3D"font-size:12.8px" dir=3D"au=
to">uhd_image_loader
                                    --args=3D&quot;type=3Dusrp2,addr=3D192.=
168.10.2&quot;</div>
                                  <div style=3D"font-size:12.8px" dir=3D"au=
to"><br>
                                    [INFO] [UHD] linux; GNU C++ version
                                    9.4.0; Boost_107100;
                                    UHD_4.5.0.0-0ubuntu1~focal1<br>
                                    [ERROR] [UHD] Exception caught in
                                    safe-call.<br>
                                    =C2=A0 in ~usrp2_iface_impl<br>
                                    =C2=A0 at
                                    /build/uhd-UJYBdq/uhd-4.5.0.0/host/lib/=
usrp/usrp2/usrp2_iface.cpp:82<br>
                                    this-&gt;lock_device(false); -&gt;
                                    RuntimeError:<br>
                                    Please update the firmware and FPGA
                                    images for your device.<br>
                                    See the application notes for
                                    USRP2/N-Series for instructions.<br>
                                    Expected protocol compatibility
                                    number [10 to 12], but got 9:<br>
                                    The firmware build is not compatible
                                    with the host code build.<br>
                                    Please run:<br>
                                    <br>
=C2=A0&quot;/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py&quot;<=
br>
                                    =C2=A0&quot;/lib/bin/uhd_image_loader&q=
uot; \<br>
                                    =C2=A0 =C2=A0
                                    --args=3D&quot;type=3Dusrp2,addr=3D192.=
168.10.2&quot;<br>
                                    <br>
                                    Error: RuntimeError: Received
                                    invalid reply 32 from device.</div>
                                </div>
                                <span>_____________________________________=
__________</span><br>
                                <span>USRP-users mailing list -- <a href=3D=
"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer=
 noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a></span><br>
                                <span>To unsubscribe send an email to <a hr=
ef=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"noreferrer noreferrer=
 noreferrer noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.com<=
/a></span><br>
                              </div>
                            </blockquote>
                          </div>
                        </blockquote>
                      </div>
                    </div>
                  </div>
                </blockquote>
                <br>
              </div>
            </blockquote>
          </div>
        </div>
      </div>
    </div>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>

--000000000000ccd8f00609e25132--

--===============4555074334459660779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4555074334459660779==--
