Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE702F42E5
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 05:12:21 +0100 (CET)
Received: from [::1] (port=45838 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzXW6-0007yL-DI; Tue, 12 Jan 2021 23:12:18 -0500
Received: from postman.dtnt.info ([62.219.91.51]:44380)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1kzXW2-0007u3-AT
 for usrp-users@lists.ettus.com; Tue, 12 Jan 2021 23:12:14 -0500
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id 28FA0476A9
 for <usrp-users@lists.ettus.com>; Wed, 13 Jan 2021 06:09:15 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id 080869FFA8
 for <usrp-users@lists.ettus.com>; Wed, 13 Jan 2021 06:09:15 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id geJP3Hw3lKOJ for <usrp-users@lists.ettus.com>;
 Wed, 13 Jan 2021 06:09:14 +0200 (IST)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54]) by o.dtnt.email (Postfix) with ESMTPSA id BA0139FF4C
 for <usrp-users@lists.ettus.com>; Wed, 13 Jan 2021 06:09:13 +0200 (IST)
Received: by mail-ot1-f54.google.com with SMTP id x5so684999otp.9
 for <usrp-users@lists.ettus.com>; Tue, 12 Jan 2021 20:09:13 -0800 (PST)
X-Gm-Message-State: AOAM530Lbe6VPKKw2u0a6cnDqPiyvX9f9zxoVDomctCHyeS75TO8KRIk
 N9qPuhnCH1EIsMyBUzGu/CkYqG9k1zPik+aMBxQ=
X-Google-Smtp-Source: ABdhPJwv054XcznZfAnoBTAYtbRlkXNlVm25flolk8njcMY8zyULy9QLKsYpvxgr96ANGtxGReqVVUM4RxcdZ+wQPOc=
X-Received: by 2002:a9d:d10:: with SMTP id 16mr76057oti.101.1610510951707;
 Tue, 12 Jan 2021 20:09:11 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSyUpdMbXX690+DMMdvhqVX55bPn6s3S_dVdcoQ6++LUiA@mail.gmail.com>
 <CAFche=gFicAa2tU3Q14btV4zcHKS-R_ed-HY5cfyjDA30YvEqg@mail.gmail.com>
In-Reply-To: <CAFche=gFicAa2tU3Q14btV4zcHKS-R_ed-HY5cfyjDA30YvEqg@mail.gmail.com>
Date: Wed, 13 Jan 2021 06:09:00 +0200
X-Gmail-Original-Message-ID: <CACDReSxLsfKPDhN+ocb1S7bs3stx0tDc-4seUUviKmpWqWRTsg@mail.gmail.com>
Message-ID: <CACDReSxLsfKPDhN+ocb1S7bs3stx0tDc-4seUUviKmpWqWRTsg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Cc: Ofer Saferman <ofer@navigicom.com>, usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 28FA0476A9.A252C
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Subject: Re: [USRP-users] Can E320 support RFNoC Replay block?
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
From: Ofer Saferman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ofer Saferman <ofer@navigicom.com>
Content-Type: multipart/mixed; boundary="===============4144022318725654253=="
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

--===============4144022318725654253==
Content-Type: multipart/alternative; boundary="0000000000002ef7b505b8c04d29"

--0000000000002ef7b505b8c04d29
Content-Type: text/plain; charset="UTF-8"

Hello Wade,

Thank you for your reply.
I was going to purchase an E320 only because of the ability to use the
Replay block. Now I can do it without worrying.

Regards,
Ofer Saferman

On Tue, Jan 12, 2021 at 9:13 PM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Ofer,
>
> The Replay block should work fine with E320. It was reverted because the
> DMA FIFO was needed in the default image. You can customize and build your
> own FPGA images if you need something custom.
>
> Thanks,
>
> Wade
>
> On Sat, Jan 9, 2021 at 12:30 PM Ofer Saferman via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>> Looking at the FPGA code on the repository for E320 I see that the replay
>> block was previously supported and reverted to a FIFO a few months ago.
>> Is it not working properly? Can I get a previous version of the FPGA
>> firmware and use the replay block on a E320?
>>
>> Regards,
>> Ofer Saferman
>>
>> --
>> This message has been scanned for viruses and
>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>> is
>> believed to be clean. _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--0000000000002ef7b505b8c04d29
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Wade,</div><div><br></div><div>Thank you for yo=
ur reply.</div><div>I was going to purchase an E320 only because of the abi=
lity to use the Replay block. Now I can do it without worrying.</div><div><=
br></div><div>Regards,</div><div>Ofer Saferman<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 12, 202=
1 at 9:13 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife=
@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Hi Ofer,</div><div><br></div><div>The Repl=
ay block should work fine with E320. It was reverted because the DMA FIFO w=
as needed in the default image. You can customize and build your own FPGA i=
mages if you need something custom.</div><div><br></div><div>Thanks,</div><=
div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 9, 2021 at 12:30 PM Ofer Safer=
man via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><di=
v><br></div><div>Looking at the FPGA code on the repository for E320 I see =
that the replay block was previously supported and reverted to a FIFO a few=
 months ago.</div><div>Is it not working properly? Can I get a previous ver=
sion of the FPGA firmware and use the replay block on a E320?</div><div><br=
></div><div>Regards,</div><div>Ofer Saferman<br></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--0000000000002ef7b505b8c04d29--


--===============4144022318725654253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4144022318725654253==--

