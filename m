Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D2233F875
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 19:51:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B05B538375F
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 14:51:13 -0400 (EDT)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 2225B38374D
	for <usrp-users@lists.ettus.com>; Wed, 17 Mar 2021 14:50:20 -0400 (EDT)
Received: by mail-vk1-f176.google.com with SMTP id k27so721806vki.2
        for <usrp-users@lists.ettus.com>; Wed, 17 Mar 2021 11:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i6lWzPMmFZfGQSPpnDbwo7nU3do7cYkHRj/YesLqOno=;
        b=tOAIMcPeGi0ws5LrcUTCquockNSH9lXuV4MbGv9Zwnec30/KsisD4WhWf/V0MaU4Lx
         6wj7RQ/HBnH3mY6kh/Z8RS8JdwAD+RUwaHYboIUgiynO6jloc2+RJp5tCiCEkIAw5/vk
         urSvbI33g6s4VAG4NIgI3TiNZq5iSP3Erb3X3YxtrQlPaOEJe4u8VMi/I2DT3WHe6G/7
         CS4atUbKxB90EJ99M8h4rfsN7GB1PRkIp5bnWaTzqPx5RFUTeUnoKs6GyYlnj4MNCuQ8
         vochh7hW5fq8VuZZ+nMgWL/fD1EHaODImbm0kjl61bLi4ot02yoIMrum/DSrdUKbH6E5
         WM9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i6lWzPMmFZfGQSPpnDbwo7nU3do7cYkHRj/YesLqOno=;
        b=mJiFjvxagBYIxxvkiIpm4K6lzzTnctajezP8wAc2FxAbJfqbphKY7shgujahN0EBbx
         tXevWdmlsSSbmlI8em5GBdTpn0dejo4Aaq2UR7HkCe9ZjNKy560FqANqPdSE/i3pLVoB
         p7Vdy32gLd4Dg7MGIOgkI9PljAu3BGtau8OugM24+WUBN0x9pgWfqdZ3UEcxc7zfby+6
         fdR7qVy93uyejkNh1sKhcXg6TTMGXvqniavfcsAa84Pawp8tKNd4GhcnKCNbqbKY71iK
         Lcxj5KIT71J7KfoJEyarzk4PFC0zbo8vafzajs7lkLlYm5RE+9Xc+d533i0SDMf8uMCY
         sdWg==
X-Gm-Message-State: AOAM530e/XbtdIuPC+yqiAw+waISbHGLd3h6sMgax0AEljZOsy119bM1
	H2+jpiv3jfDBaksAmF86EEXpWW80mrtsW0BxOLZO+uW/
X-Google-Smtp-Source: ABdhPJzglJyMIJTwvDmHSh4AOJWRNh2gdJ53F50AvzUDvZT8PYLHxEiXPtLURWO0Z4n1WLpCHWV3DSaH9rJKSRqb3QY=
X-Received: by 2002:a1f:b689:: with SMTP id g131mr4212706vkf.6.1616007020490;
 Wed, 17 Mar 2021 11:50:20 -0700 (PDT)
MIME-Version: 1.0
References: <BMXPR01MB27601B8EBE3F518F4937565D8B6B9@BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM>
 <6050B5EC.90606@gmail.com>
In-Reply-To: <6050B5EC.90606@gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 17 Mar 2021 14:49:44 -0400
Message-ID: <CAL7q81t+SYEZLZfFc+iYzkxGb4PNsLtuYDGS-wU6DEugO8CRxw@mail.gmail.com>
To: "Sourin Mondal (Vehere)" <sourin.mondal@vehere.com>
Message-ID-Hash: AWVYZAGYYKV2CRLD4HCB27UQLS5X6LIH
X-Message-ID-Hash: AWVYZAGYYKV2CRLD4HCB27UQLS5X6LIH
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to create stream data from USRP (via PCI) using rfnoc block in c++
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AWVYZAGYYKV2CRLD4HCB27UQLS5X6LIH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7955116837905119029=="

--===============7955116837905119029==
Content-Type: multipart/alternative; boundary="00000000000069469105bdbff420"

--00000000000069469105bdbff420
Content-Type: text/plain; charset="UTF-8"

Hi Sourin,

Here are a few more links for UHD 4.0 / RFNoC 4:

Getting Started with RFNoC in UHD 4.0
<https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0>
RFNoC 4 Migration Guide <https://kb.ettus.com/RFNoC_4_Migration_Guide>
RFNoC 4 Workshop (Youtube Video)
<https://www.youtube.com/watch?v=M9ntwQie9vs>
Exploring RFNoC 4 with the UHD Python API (Youtube Video)
<https://youtu.be/fbcxm7f-Tj0>

Jonathon

On Tue, Mar 16, 2021 at 9:43 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 03/16/2021 07:10 AM, Sourin Mondal (Vehere) wrote:
>
> Hi,
> I am trying to stream data from USRP where the data passed through RFNOC
> block (in order to create a lowpass filter) before coming to host machine
> and I am trying to implement it using C++ code. I know how to stream data
> normally. i.e. without rfnoc block in c++. Can anyone please help me how to
> implement or the syntax to stream data via RFNOC block to host machine.
>
> Thanking you.
>
> with regards,
>
> There is some getting-started information here:
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>
> There are also a number of rfnoc-based examples in the source code tree,
> in the "host/examples" directory.
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000069469105bdbff420
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Sourin,<div><br></div><div>Here are a few more links fo=
r UHD 4.0 / RFNoC 4:</div><div><br></div><div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif"><a href=3D"https://kb.ettus.com/Ge=
tting_Started_with_RFNoC_in_UHD_4.0" target=3D"_blank">Getting Started with=
=C2=A0<span class=3D"gmail-il">RFNoC</span>=C2=A0in UHD=C2=A0<span class=3D=
"gmail-il">4</span>.0</a></div><div class=3D"gmail_default" style=3D"font-f=
amily:verdana,sans-serif"><a href=3D"https://kb.ettus.com/RFNoC_4_Migration=
_Guide">RFNoC 4 Migration Guide</a><br></div><div class=3D"gmail_default" s=
tyle=3D"font-family:verdana,sans-serif"><a href=3D"https://www.youtube.com/=
watch?v=3DM9ntwQie9vs" target=3D"_blank"><span class=3D"gmail-il">RFNoC</sp=
an>=C2=A0<span class=3D"gmail-il">4</span>=C2=A0Workshop (Youtube Video)</a=
></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif=
"><a href=3D"https://youtu.be/fbcxm7f-Tj0" target=3D"_blank">Exploring=C2=
=A0<span class=3D"gmail-il">RFNoC</span>=C2=A0<span class=3D"gmail-il">4</s=
pan>=C2=A0with the UHD Python API (Youtube Video)</a></div></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">Jonathon</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, Mar 16, 2021 at 9:43 AM Marcus D. Leech &lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 03/16/2021 07:10 AM, Sourin Mondal
      (Vehere) wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        Hi,</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        I am trying to stream data from USRP where the data passed
        through RFNOC block (in order to create a lowpass filter) before
        coming to host machine and I am trying to implement it using C++
        code. I know how to stream data normally. i.e. without rfnoc
        block in c++. Can anyone please help me how to implement or the
        syntax to stream data via RFNOC block to host machine.</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        Thanking you.</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        with regards,<br>
      </div>
      <br>
    </blockquote>
    There is some getting-started information here:<br>
    <br>
    <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Development"=
 target=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_Developm=
ent</a><br>
    <br>
    There are also a number of rfnoc-based examples in the source code
    tree, in the &quot;host/examples&quot; directory.<br>
    <br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000069469105bdbff420--

--===============7955116837905119029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7955116837905119029==--
