Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DFC34F2B9
	for <lists+usrp-users@lfdr.de>; Tue, 30 Mar 2021 23:03:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5CAAA383907
	for <lists+usrp-users@lfdr.de>; Tue, 30 Mar 2021 17:03:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ZVco2QaN";
	dkim-atps=neutral
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 33EF73838EF
	for <usrp-users@lists.ettus.com>; Tue, 30 Mar 2021 17:02:15 -0400 (EDT)
Received: by mail-ot1-f41.google.com with SMTP id 91-20020a9d08640000b0290237d9c40382so16870006oty.12
        for <usrp-users@lists.ettus.com>; Tue, 30 Mar 2021 14:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vNWXD48b3UYog5LUoZGpnKperKHR5aPt4DX2IHUSkno=;
        b=ZVco2QaNxdFO81a6oOeND0FbB2NqYWUG6yq1wLzrLUJrldQXCTrqSnf8Mg7KTtvzXT
         FyN5cWq5Fzcor/+etWfSdySoAQO2JcFIC7fuWZO5aF/X4o23PZDd8hQ8Xf2t31vq7Xge
         204vlsQFH1d3d9NcEfdYJUmRNhI1XMhu1Bj633NJa++QCYT8tzd/t6ccUK0Qzvvq1Scv
         HwkiyG4bNnSGjpLttiMSRw3rCYRglaxRn8n9Ikf2VnO32DOVhDbsrHwJNJSj40xqzYvj
         sJc3obpfUeqWKKcdiTM72EddaXemJSmUlgbHvU8VBuJixrlbusJg5THPL67TSqEPxZF2
         VDnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vNWXD48b3UYog5LUoZGpnKperKHR5aPt4DX2IHUSkno=;
        b=scchokjtjjxrL+7xBEAzeLHOwcwW7UBzOm45hEdH4UM3UPROigEp5X2t5aPvuNc25t
         OS8f/3LYKeTwG6DYV19mNMDktHvffiJCWANxkYuDx7Ykhy9JtLr8WZAlbMKgurh1SVfW
         rMPpvKSwUut7Y2VydDyoOdnReU5PEuay84DSwfA6iHx80r5Ktj21mbuGHnDJASs/XZyL
         MQJKfn5Z8ynamx80a2y+vvTfx4H9G1r9/FOFSSEARvOK8m4m/9pbXWuw0QLkhHOGEkwU
         HbekniGQR8D93qptO0OqSnjVjRakI4avoBQMcGtaT0c27Oq2XLbP0P9hCiKyef/+hHSH
         Ywkw==
X-Gm-Message-State: AOAM530GAz/Xe+x2Jk38L1XEMij1FnstB6l5LPbJqn1PzMphKXNapxxP
	8pnRn8dEijJBkgO+qGBJrw3ZXMTXpcmhPqwyzk1DzA==
X-Google-Smtp-Source: ABdhPJyuFbUbVyP7JY+qhbBE/jhIOA6XC9ObN65Fex8I2D4BHHDO/+j4W+7FF0eNT3lqKpJYnrbAskZty8C6q22Hl4M=
X-Received: by 2002:a9d:469:: with SMTP id 96mr28552285otc.302.1617138134332;
 Tue, 30 Mar 2021 14:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <SN6PR03MB41609C51432203513A57A1EDB17E9@SN6PR03MB4160.namprd03.prod.outlook.com>
 <SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9@SN6PR03MB4160.namprd03.prod.outlook.com>
In-Reply-To: <SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9@SN6PR03MB4160.namprd03.prod.outlook.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 30 Mar 2021 17:02:03 -0400
Message-ID: <CAB__hTTF5weM3_LtNRwTwgyuoy9TDe5OFdxOqgqenYChE-QfAw@mail.gmail.com>
To: "Mattingly, Rylee" <rmattingly@ou.edu>
Message-ID-Hash: VVUU4R2EZKXCBXBFTBBWM7BXF4STCVWB
X-Message-ID-Hash: VVUU4R2EZKXCBXBFTBBWM7BXF4STCVWB
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Generating Packets in a 2-Port Block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VVUU4R2EZKXCBXBFTBBWM7BXF4STCVWB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7015734309163611068=="

--===============7015734309163611068==
Content-Type: multipart/alternative; boundary="0000000000000d36bd05bec75080"

--0000000000000d36bd05bec75080
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rylee,
I think the problem is that the "length" in the context header should be in
bytes (not in samples).
Rob

On Mon, Mar 29, 2021 at 7:31 PM Mattingly, Rylee <rmattingly@ou.edu> wrote:

> Hi all,
>
>
>
> I am currently working on a RFNoC block that has a =E2=80=98passthrough=
=E2=80=99 port and
> =E2=80=98results=E2=80=99 port that outputs data based on the samples see=
n in the
> passthrough stream.
>
>
>
> I am currently using the AXI-stream payload context interface and I am
> having trouble deterministically generating packets. My current test bloc=
k
> outputs the value of the counter as the payload, but the count seems to  =
be
> about a quarter of the length of the desired length.  For instance, my
> current test block is supposed to output 1024 samples from 0-1022 with a
> zero as the last payload element. But I am only getting 0-251.
>
>
>
> This is not an issue that I am having in my functional simulations of the
> state machine and so I believe that I may be misunderstanding something
> critical about the interface. Any suggestions are greatly appreciated.
>
>
> I am using UHD 4.0 with an x310 using Dual 10Gig ethernet. A test version
> of the block with only the transmit packet logic is attached.
>
>
> Thank you,
>
>
>
> Rylee Mattingly
>
> University of Oklahoma
>
> Graduate Research Assistant
>
> Email: rmattingly@ou.edu
>
>
>
> Attachment
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000d36bd05bec75080
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rylee,<div>I think the problem is that the &quot;length=
&quot; in the context header should be in bytes (not in samples).</div><div=
>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Mar 29, 2021 at 7:31 PM Mattingly, Rylee &lt;<a href=3D"m=
ailto:rmattingly@ou.edu">rmattingly@ou.edu</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<span style=3D"font-size:11pt">Hi all,</span>
<div>
<div dir=3D"ltr">
<div>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span style=3D"font-size:11pt">=C2=A0</span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span style=3D"font-size:11pt">I am currently working on a <span>
RFNoC</span> block that has a =E2=80=98passthrough=E2=80=99 port and =E2=80=
=98results=E2=80=99 port that outputs data based on the samples seen in the=
 passthrough stream.</span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span style=3D"font-size:11pt">=C2=A0</span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span style=3D"font-size:11pt">I am currently using the AXI-stream payload =
context interface and I am having trouble deterministically generating pack=
ets. My current test block outputs the value of the counter as the payload,=
 but the count seems to
<span>=C2=A0</span>be about a quarter of the length of the desired length.<=
span>=C2=A0
</span>For instance, my current test block is supposed to output 1024 sampl=
es from 0-1022 with a zero as the last payload element. But I am only getti=
ng 0-251.<span>=C2=A0
</span></span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span style=3D"font-size:11pt">=C2=A0</span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span style=3D"font-size:11pt">This is not an issue that I am having in my =
functional simulations of the state machine and so I believe that I may be =
misunderstanding something critical about the interface. Any suggestions ar=
e greatly appreciated.</span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span style=3D"font-size:11pt"><br>
</span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span style=3D"font-size:11pt">I am using UHD 4.0 with an x310 using Dual 1=
0Gig ethernet. A test version of the block with only the transmit packet lo=
gic is attached.
<br>
</span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span style=3D"font-size:11pt"><br>
</span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span style=3D"font-size:11pt">Thank you,<br>
</span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span style=3D"font-size:11pt">=C2=A0</span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<a name=3D"m_-4117190837905098919_x__MailAutoSig"><span>Rylee Mattingly</sp=
an></a></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span><span>University of Oklahoma</span></span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span><span>Graduate Research Assistant</span></span></p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
<span><span>Email: </span></span><a href=3D"mailto:rmattingly@ou.edu" targe=
t=3D"_blank"><span><span style=3D"color:rgb(5,99,193)">rmattingly@ou.edu</s=
pan></span><span></span></a><span><span></span></span></p>
<span></span>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
=C2=A0</p>
<p style=3D"margin:0in;font-size:12pt;font-family:Calibri,sans-serif">
Attachment<br>
</p>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000d36bd05bec75080--

--===============7015734309163611068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7015734309163611068==--
