Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB87AE6D79
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 19:28:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AC5B3809A5
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 13:28:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750786132; bh=A251+8G4YVNypQZDoZZmpAWB6y9lrNTOPYzYAVunSH0=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xrcPNSLTP04bGV/QI8xoTkj9sN+qg9Ixyw+E+PGiSD9S+XGYRbEHzM1hgEpQd7YwH
	 coP6CdqQATZH2OoTH2C5fkqZSG7IGGq39R3p5Fw5mbDZpoFZfL8lQHxmbeT1DDchgV
	 K6ngPiz96qOkIU9QzyHoDStAX9dBKZoFpuonQ5kQYD/750T02KGy5O5Jpe+rUE/ciq
	 Q28qAg//ipNT4Syp2BSJKcI08OiZq8fUnJEAwJs+PLRbcgS87X6CIN4QzNDPCaAnJZ
	 By0tTJUJOcYG6nJ25QG5G3LAq4QKZYqxcUk6eY7VoZ5UR3VcSSsJNZYxFWFQfOxoBC
	 j9F9/W6+Jqj7Q==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 9639E385B37
	for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 13:27:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="i6SLq1ev";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-adb2bb25105so902641966b.0
        for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 10:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1750786073; x=1751390873; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J6jYRUEqBb/MLi/68AZ7zCgyeHFiH7waw6LGqwIciNU=;
        b=i6SLq1ev1jmiZSAFUrRpkpDHajYmyrkmyS6EGfufymrSwPIC4sqS/u91vN9gMO4tsu
         sxBCSCh/DbjBcgfpg8BU8xDSY47gM/NPuZNihL3whGhwHvKE7sEdu4FZE/1jBeJommlh
         64iKYjaAmULfc3GfuKUoWj2daGMXknjmULY0tN5AOnETfhJGXFR7MQC8XpVU9DOXHvcl
         MbfPEGNOMraEg9CtWMLJ+lsA07wlvqUuJ4pgdH4CB/AamWIcuyFiYabJHZMEHDFWXrRk
         2vvE6AuYObGUIyikI1vrcySSoGa1jeQeIkAc0V5RyX5ZZz3NxQmrpnOCcKBeKiaHUJSP
         kGSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750786073; x=1751390873;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J6jYRUEqBb/MLi/68AZ7zCgyeHFiH7waw6LGqwIciNU=;
        b=emPH1uszr/J3OHW4npGkYmPy8PKEzNYzLs8sD3E2fpMT7y7ZxS99o24qKbBYS+NbMZ
         rLiaAFlT/ElGSIVLXN50WGMJTl/CaRDIH7NfH+Yfo6eKO3IecOth4mAoqBch4O0UEt8H
         tcVmgSDi9b26tcwtzWWTVLWEMDPUpMkBh+2G6HPtUD1rQomIM7rN4CKzp1j/xgNvnc9X
         a7ocKQiNO8V3PsYfwjnRGdPY+juDrxcoechYUIi42nNsjGLo/e4K5UbcQn6Tn4Sy+wws
         QhWjw5QWpwIpbdMQ9q/sMOkREke+FT6avW0BLdO+iTv1d2BYB03f15Yr7Mw501ybhhfd
         Mjpw==
X-Gm-Message-State: AOJu0Yxu+CImcX55Cii1lHfSXUbpMH9aBy0Y/znHrGGVpZXACbcG9Am1
	H0ZImRjGw0Tj5KJR+cVDyauGhfNRJ84y6HKJaiIprjtm95Cd0xFC9Rc9jYDvsv5kSRhGX7o8X6W
	pE1K2EoCQ6nBpRfwnYrf40tAyAQJ/sxTdHgdtejhfB1UtaBuCB5+nVVs=
X-Gm-Gg: ASbGnctU/jvjqyPZAR9qprQxRzY/z4wmftAMFeWq2SDucPm9g7o6i5dQ0zL6XqsCu5T
	in9euyhJZ3xtBWjp7ORkEuvr0qD+LHq+r3uzd+OE5HHjB9K9Bty08I/V8oNLuPXfFWDNji0/nHz
	KQXj/T12taUQYEcyhegX6JwYXIBMW9Lp0TT68djEuxjAzHch6SaVFk0KjpRD0B2du8tmOb/Z4Yk
	+U=
X-Google-Smtp-Source: AGHT+IHLxIOtqTgAL0nhnuggt0Q8kLMnzZMlQ70hI7RJPHZPnMm1CmSG98R/huupUGuj6AvevjjZSdBnWu2ttxLlGAs=
X-Received: by 2002:a17:907:7b89:b0:ad8:9257:573d with SMTP id
 a640c23a62f3a-ae0be9aecf5mr16246966b.24.1750786072994; Tue, 24 Jun 2025
 10:27:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQSQ4774oEwhJMnmEQH1q0diNbKmFB2fR8dPtQsBBZbUQ@mail.gmail.com>
 <CAB__hTRz3MNhS-QEbYnZ4PuhmfiLD2nJGXfi_563ZwjnrWr3SA@mail.gmail.com>
In-Reply-To: <CAB__hTRz3MNhS-QEbYnZ4PuhmfiLD2nJGXfi_563ZwjnrWr3SA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 24 Jun 2025 19:27:41 +0200
X-Gm-Features: Ac12FXz8Z2kEFNxmakiZCrFUe2jF5xsyDkCPWj2rMFl0NxLpPXJXNGlnSkWuAls
Message-ID: <CAFOi1A76-pGg5uEqYDKxmPM5FT8z-TFeOwkcdwCKfg3sDN10pQ@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: BXL7JBCCRSFK4MSHF7TPMNUSGSZFBBZW
X-Message-ID-Hash: BXL7JBCCRSFK4MSHF7TPMNUSGSZFBBZW
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 100Gb link issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BXL7JBCCRSFK4MSHF7TPMNUSGSZFBBZW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1174372322961954162=="

--===============1174372322961954162==
Content-Type: multipart/alternative; boundary="000000000000f576e7063854a51a"

--000000000000f576e7063854a51a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Rob,

thanks for getting back to us on the resolution. Yeah, we have seen issues
with different (Q)SFP modules over the years -- not all work with USRPs.

--M

On Sat, Jun 21, 2025 at 12:22=E2=80=AFAM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Update.  The optical transceiver model that I was using is labeled
> "QSFP-CWDM4-100G".  I also have some older models "QSFP28-IR4-100G" which=
 I
> believe are the same item (just with the model renamed at some point). In
> any case, if I use the IR4 model in the X410 with either the IR4 or the
> CWDM4 model in the workstation E810 NIC, it now works!  So, the fact that
> the 2 different model names can talk to each other must imply that the
> technology (CWDM x4) is the same.  And, the fact that the X410 is happy
> with the IR4 model means that it can handle this technology.  I don't
> really have an explanation why the CWDM4 model does not work in the X410.
> Rob
>
> On Fri, Jun 20, 2025 at 4:19=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wro=
te:
>
>> Hi,
>> I just received an X410 and I am having trouble getting the 100Gb link t=
o
>> work.
>>
>>    - On the workstation side, my NIC is an Intel E810 CQDA2 and I am
>>    using UHD-4.8 with Ubuntu 24.04 LTS
>>    - On the X410 side, I loaded the  UHD-4.8 file system and the UC_200
>>    FPGA image which implements 100Gb on SFP1.
>>    - Finally, I am using Fiberstore CWDM4 100Gb
>>    <https://www.fs.com/products/65219.html?now_cid=3D1159> optical
>>    transceivers with a duplex single-mode fiber.  This item is my curren=
t
>>    suspected culprit - it's not clear to me whether the operation of thi=
s
>>    optical transceiver is transparent to the 100Gb port or if the port n=
eeds
>>    to handle things differently for this type of CWDM transceiver
>>
>> The problem is that I never even get link lights on the workstation NIC
>> when I connect to the X410. However, if I move the QSFP28 transceiver fr=
om
>> the X410 to another workstation (with a Mellanox 100Gb NIC), the link
>> lights come right up on both sides and the OS sees a 100Gb Ethernet link=
.
>>
>> So, the problem "appears" to be that the X410 does not like this optical
>> transceiver. Does anyone have any experience using this optical transcei=
ver
>> with the X410?
>>
>> Thanks.
>> Rob
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f576e7063854a51a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Rob,</div><div><br></div><div>thanks for getting =
back=C2=A0to us on the resolution. Yeah, we have seen issues with different=
 (Q)SFP modules over the years -- not all work with USRPs.</div><div><br></=
div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_container=
"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jun 21, 2025 at 12:22=E2=80=
=AFAM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Update.=C2=A0 The optica=
l transceiver model that I was using is labeled &quot;QSFP-CWDM4-100G&quot;=
.=C2=A0 I also have some older models &quot;QSFP28-IR4-100G&quot; which I b=
elieve are the same item (just with the model renamed at some point). In an=
y case, if I use the IR4 model in the X410 with either the IR4 or the CWDM4=
 model in the workstation E810 NIC, it now works!=C2=A0 So, the fact that t=
he 2 different model names can talk to each other must imply that the techn=
ology (CWDM x4) is the same.=C2=A0 And, the fact that the X410 is happy wit=
h the IR4 model means that it can handle this technology.=C2=A0 I don&#39;t=
 really have an explanation why the CWDM4 model does not work in the X410.<=
div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Jun 20, 2025 at 4:19=E2=80=AFPM Rob Kossler &lt;<a hre=
f=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr">Hi,<div>I just received an X410 and I am having trouble getting the 100=
Gb link to work.=C2=A0</div><div><ul><li>On the workstation side, my NIC is=
 an Intel E810 CQDA2 and I am using UHD-4.8 with Ubuntu 24.04 LTS<br></li><=
li>On the X410 side, I loaded the=C2=A0 UHD-4.8 file system and the UC_200 =
FPGA image which implements 100Gb on SFP1.=C2=A0=C2=A0</li><li>Finally, I a=
m using <a href=3D"https://www.fs.com/products/65219.html?now_cid=3D1159" t=
arget=3D"_blank">Fiberstore CWDM4 100Gb</a> optical transceivers with a dup=
lex single-mode fiber.=C2=A0 This item is my current suspected culprit - it=
&#39;s not clear to me whether the operation of this optical transceiver is=
 transparent to the 100Gb port or if the port needs to handle things differ=
ently for this type of CWDM transceiver</li></ul><div>The problem is that I=
 never even get link lights on the workstation NIC when I connect to the=C2=
=A0X410. However, if I move the QSFP28 transceiver from the X410 to another=
 workstation (with a Mellanox 100Gb NIC), the link lights come right up on =
both sides and the OS sees a 100Gb Ethernet link.=C2=A0=C2=A0</div><div><br=
></div><div>So, the problem &quot;appears&quot; to be that the X410 does no=
t like this optical transceiver. Does anyone have any experience using this=
 optical transceiver with the X410?</div></div><div><br></div><div>Thanks.<=
/div><div>Rob</div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f576e7063854a51a--

--===============1174372322961954162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1174372322961954162==--
