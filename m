Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D12303ED04D
	for <lists+usrp-users@lfdr.de>; Mon, 16 Aug 2021 10:31:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F9DD384059
	for <lists+usrp-users@lfdr.de>; Mon, 16 Aug 2021 04:31:34 -0400 (EDT)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 833F7383F8A
	for <usrp-users@lists.ettus.com>; Mon, 16 Aug 2021 04:30:46 -0400 (EDT)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 5DB4B41144
	for <usrp-users@lists.ettus.com>; Mon, 16 Aug 2021 11:30:37 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id 4385C9FC07
	for <usrp-users@lists.ettus.com>; Mon, 16 Aug 2021 11:30:37 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id ItOctef3Mi3Z for <usrp-users@lists.ettus.com>;
	Mon, 16 Aug 2021 11:30:32 +0300 (IDT)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by o.dtnt.email (Postfix) with ESMTPSA id 60C879F86F
	for <usrp-users@lists.ettus.com>; Mon, 16 Aug 2021 11:30:32 +0300 (IDT)
Received: by mail-ot1-f51.google.com with SMTP id e13-20020a9d63cd0000b02904fa42f9d275so20089648otl.1
        for <usrp-users@lists.ettus.com>; Mon, 16 Aug 2021 01:30:32 -0700 (PDT)
X-Gm-Message-State: AOAM530Z5WlAReG3JTbwCINfcN9UHiQUge7uz2uUqMC1ygL43dNmurQZ
	lb6dSkUHZG1udkY3kwTi7xwup7CYV7b5lygNk3c=
X-Google-Smtp-Source: ABdhPJxOAVRfay48jvf7E+VQd6pWYXAnIg03JijDUwERtRTDC64yxBjQJTaw+HCEtbhRseIBQ0Tt66nsEZBYxYl7a/M=
X-Received: by 2002:a9d:828:: with SMTP id 37mr600745oty.0.1629102630487; Mon,
 16 Aug 2021 01:30:30 -0700 (PDT)
MIME-Version: 1.0
References: <162909902310.11274.10452860937061882564@mm2.emwd.com>
In-Reply-To: <162909902310.11274.10452860937061882564@mm2.emwd.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Mon, 16 Aug 2021 11:30:19 +0300
X-Gmail-Original-Message-ID: <CACDReSxmPoF72xO8NVw63jyso8Eguy06WRL9LDQ8McMuDuF++Q@mail.gmail.com>
Message-ID: <CACDReSxmPoF72xO8NVw63jyso8Eguy06WRL9LDQ8McMuDuF++Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 5DB4B41144.A33CE
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: RJLQJ2OV7QSJZYIDSUWBV5KPT5YKPLMO
X-Message-ID-Hash: RJLQJ2OV7QSJZYIDSUWBV5KPT5YKPLMO
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 on E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RJLQJ2OV7QSJZYIDSUWBV5KPT5YKPLMO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4040288802187293314=="

--===============4040288802187293314==
Content-Type: multipart/alternative; boundary="00000000000097cb1805c9a903fd"

--00000000000097cb1805c9a903fd
Content-Type: text/plain; charset="UTF-8"

Hello,

Thank you for your suggestion. I will follow up on that.
Any comment on the RFNoC replay block?

Regards,
Ofer Saferman


On Mon, Aug 16, 2021 at 10:30 AM <usrp-users-request@lists.ettus.com> wrote:

> Send USRP-users mailing list submissions to
>         usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via email, send a message with subject or
> body 'help' to
>         usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
>         usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."Today's Topics:
>
>    1. Re: UHD 4.1 on E320 (Marcus D. Leech)
>
>
>
> ---------- Forwarded message ----------
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: usrp-users@lists.ettus.com
> Cc:
> Bcc:
> Date: Sun, 15 Aug 2021 08:38:46 -0400
> Subject: [USRP-users] Re: UHD 4.1 on E320
> On 08/15/2021 01:01 AM, Ofer Saferman wrote:
> > Hello,
> >
> > I have a E320 that came out-of-the-box with an image on the SD card of
> > UHD 3.15.
> > What would be the easiest way to upgrade it to UHD 4.1?
> > Is there an SD image that is ready to program?
> > Do I have to rebuild it on the E320?
> >
> > Also, can you please comment if the FPGA image of UHD 4.1 comes with
> > the RFNoC Replay block?
> > What would be the shortest path for me to get any UHD version on the
> > E320 that has the RFNoC replay block built-in without needing to
> > rebuild the FPGA image by myself?
> >
> > Thanks,
> > Ofer Saferman
> >
> >
> Ofer:
>
> The uhd_images_downloader lets you download sd-card images these days,
> as shown in this document:
>
> https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card
>
> So load up 4.1 on your host, and then use uhd_images_downloader to pull
> down the relevant sd-card image.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--00000000000097cb1805c9a903fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,</div><div dir=3D"ltr"><br></div><d=
iv>Thank you for your suggestion. I will follow up on that.</div><div>Any c=
omment on the RFNoC replay block?</div><div><br></div><div>Regards,</div><d=
iv>Ofer Saferman<br></div><div dir=3D"ltr"><br></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 16, 2021 at 10:3=
0 AM &lt;<a href=3D"mailto:usrp-users-request@lists.ettus.com">usrp-users-r=
equest@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">Send USRP-users mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via email, send a message with subject or<br>
body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-request@lists.ettu=
s.com" target=3D"_blank">usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@lists.ettus.=
com" target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: UHD 4.1 on E320 (Marcus D. Leech)<br>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0&quot;Mar=
cus D. Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D=
"_blank">patchvonbraun@gmail.com</a>&gt;<br>To:=C2=A0<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br=
>Cc:=C2=A0<br>Bcc:=C2=A0<br>Date:=C2=A0Sun, 15 Aug 2021 08:38:46 -0400<br>S=
ubject:=C2=A0[USRP-users] Re: UHD 4.1 on E320<br>On 08/15/2021 01:01 AM, Of=
er Saferman wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I have a E320 that came out-of-the-box with an image on the SD card of=
 <br>
&gt; UHD 3.15.<br>
&gt; What would be the easiest way to upgrade it to UHD 4.1?<br>
&gt; Is there an SD image that is ready to program?<br>
&gt; Do I have to rebuild it on the E320?<br>
&gt;<br>
&gt; Also, can you please comment if the FPGA image of UHD 4.1 comes with <=
br>
&gt; the RFNoC Replay block?<br>
&gt; What would be the shortest path for me to get any UHD version on the <=
br>
&gt; E320 that has the RFNoC replay block built-in without needing to <br>
&gt; rebuild the FPGA image by myself?<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Ofer Saferman<br>
&gt;<br>
&gt;<br>
Ofer:<br>
<br>
The uhd_images_downloader lets you download sd-card images these days, <br>
as shown in this document:<br>
<br>
<a href=3D"https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_=
a_SD_Card" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Writin=
g_the_USRP_File_System_Disk_Image_to_a_SD_Card</a><br>
<br>
So load up 4.1 on your host, and then use uhd_images_downloader to pull <br>
down the relevant sd-card image.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--00000000000097cb1805c9a903fd--

--===============4040288802187293314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4040288802187293314==--
