Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F00756941D
	for <lists+usrp-users@lfdr.de>; Mon, 15 Jul 2019 16:49:38 +0200 (CEST)
Received: from [::1] (port=53380 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hn2IL-0002ZB-Ad; Mon, 15 Jul 2019 10:49:37 -0400
Received: from mail-io1-f50.google.com ([209.85.166.50]:46544)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1hn2IH-0002Ru-Bv
 for usrp-users@lists.ettus.com; Mon, 15 Jul 2019 10:49:33 -0400
Received: by mail-io1-f50.google.com with SMTP id i10so34422491iol.13
 for <usrp-users@lists.ettus.com>; Mon, 15 Jul 2019 07:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QayUtUKIrS/H16wffbtbHzeFTmSyYqUo/A4m1YrrmcI=;
 b=DCkTGCJl/DE49mJURSduBBGWjPHGUyRCyq/u58VMfnldxSyugeXqA4aRZmfctNFjAN
 fU14moS+Gps/th6JqXyoxIJw4tMBxpParwOOgW96sS0iI4QASNOGXAJ9/N0F48kDafFO
 Ax5rSwQ6OKPZBNmiGSRKkImUi/C0e6iRVFqCjzTgB1PESPBWaot7cfiJ9nQ9ppLM/VYc
 DqyRZP30GLUvs0rxxzSCSr7bLH+OclCko1ELl8ML8rgopNAaUNNxFrTkYuC90QcEt0qX
 0gskvadgPxxEaMRkwoJ9V5VoshyIb9tuoyb7zaYLDG2MsWEGK2CbE2YCJ4nZWRQvDQcQ
 kkEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QayUtUKIrS/H16wffbtbHzeFTmSyYqUo/A4m1YrrmcI=;
 b=AJLGR/nvzFqTAnkcERpFNhxa+Z0F6Umiq6gIxVgtcZPRbmbS7YZkFT59b0qmfjgUxD
 vJPy7UtDXjvMWxlI/1C3SL0z7UhSdjHjJC6jzmdReLlHPp0n9gI4LOiVVDKev9dWR6CF
 kzRY0J+mrs1kpjI6usWCDZFltW2rEOJ9mkWj/nJBGkx0OkaJy07u/cap8RU5+1kNR6DQ
 eEdo+fgj4uVxYrRwKKzlWICuxkdiJIcTfD1gtDhgxK1mAGrX7vD7zSxPB3M1WsIzt7KQ
 MhuSRN5NtRIYe9hma2EbiDaks7Z2LqMsRETiGfMnPGDGV18mipPiTKiIPaTSmzSuSpZo
 uaGA==
X-Gm-Message-State: APjAAAVILDXe0Jx2kvHM8HC8jwzBi8UhTHSJG0n7M6d4NVDCSxDYQ+eG
 ohlg9az0PbBtx9Tuz05ceI8ltEcWoS7wgIrr8O0=
X-Google-Smtp-Source: APXvYqykrRQf4XjUEIncnHy6CHgippMWBhI9dCkL04nHZblf5nlsHePzl4U0TkJqMB4UW1pzyWFaEpi+6e+vuQk+B7I=
X-Received: by 2002:a5e:c803:: with SMTP id y3mr24988031iol.308.1563202132575; 
 Mon, 15 Jul 2019 07:48:52 -0700 (PDT)
MIME-Version: 1.0
References: <MAXPR0101MB153020BA8AEC1D99B16F030790CF0@MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM>
 <1915F48D-FF15-4AD4-A124-A15ABFB9324A@gmail.com>
In-Reply-To: <1915F48D-FF15-4AD4-A124-A15ABFB9324A@gmail.com>
Date: Mon, 15 Jul 2019 07:48:41 -0700
Message-ID: <CAKJyDkLz2Q=J2SL1DSZzCvm2sEKmu_jMbZfTievjOUmD9XCcvA@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] USRP E313
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4413891570180228374=="
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

--===============4413891570180228374==
Content-Type: multipart/alternative; boundary="000000000000d320b0058db95bde"

--000000000000d320b0058db95bde
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The USRP E313 is an E310 in a weatherproof enclosure with PoE capability.
 As Marcus points out, the network interface to the PC (over 1gigE RJ-45)
has far less bandwidth than an Ettus-branded USRP X310 or NI USRP 294x or
295x using a PCIe or 2x10 gigE link to a host PC.



On Mon, Jul 15, 2019 at 7:44 AM Marcus D Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Not really possible except for a test mode called network mode that offer=
s
> very low bandwidth
>
> Sent from my iPhone
>
> On Jul 15, 2019, at 4:27 AM, Koyel Das (Vehere) via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi,
>
>
> The following USRP
>
>
> https://www.ettus.com/all-products/usrp-e313/
> <https://www.ettus.com/all-products/usrp-e313/>
> USRP E313 | Ettus Research, a National Instruments Brand | The leader in
> Software Defined Radio (SDR)
> <https://www.ettus.com/all-products/usrp-e313/>
> www.ettus.com
> The USRP E313 is a rugged and weatherproof SDR designed for outdoor
> deployment. Containing an embedded USRP E310 inside an IP67-rated
> enclosure, the USRP E313 provides ingress protection against dust and wat=
er
> with extensive testing to ensure operation under demanding environmental
> conditions.
>
> has embedded processor I think. So is it possible that we don't use the
> embedded processor and use it like USRP 2955 that is capture data using
> gnuradio API and process it in our computer as we are doing with 2955?
>
>
>
> Regards,
>
> Koyel Das
> Senior =E2=80=93 Product Engineer
> Vehere | Proactive Communications Intelligence & Cyber Defence
> M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W:
> www.vehere.com
>
>
>
> *[image: unnamed]
> <https://www.linkedin.com/company/vehere-interactive-p-ltd> [image: unnam=
ed
> (1)] <https://twitter.com/VehereIndia> [image: unnamed (2)]
> <https://www.facebook.com/VehereIndia/>   Vehere is the proud recipient o=
f
> the Fastest Growing Technology Company Awards in India & Asia since 2012!=
*
>
> The content of this e-mail is confidential and intended solely for the us=
e
> of the addressee. The text of this email (including any attachments) may
> contain information, which is proprietary and/or confidential or privileg=
ed
> in nature belonging to Vehere Interactive Pvt Ltd and/or its associates/
> group companies/ subsidiaries. If you are not the addressee, or the perso=
n
> responsible for delivering it to the addressee, any disclosure, copying,
> distribution or any action taken or omitted to be taken in reliance on it
> is prohibited and may be unlawful. If you have received this e-mail in
> error, please notify the sender and remove this communication entirely fr=
om
> your system. The recipient acknowledges that no guarantee or any warranty
> is given as to completeness and accuracy of the content of the email. The
> recipient further acknowledges that the views contained in the email
> message are those of the sender and may not necessarily reflect those of
> Vehere Interactive Pvt Ltd. Before opening and accessing the attachment
> please check and scan for virus. WARNING: Computer viruses can be
> transmitted via email. The recipient should check this email and any
> attachments for the presence of viruses. The company accepts no liability
> for any damage caused by any virus transmitted by this email.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d320b0058db95bde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The USRP E313 is an E310 in a weatherproof enclosure with =
PoE capability.=C2=A0 =C2=A0As Marcus points out, the network interface to =
the PC (over 1gigE RJ-45) has far less bandwidth than an Ettus-branded USRP=
 X310 or NI USRP 294x or 295x using a PCIe or 2x10 gigE link to a host PC.<=
div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Jul 15, 2019 at 7:44 AM Marcus D Leec=
h via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"auto">Not really possible except for a test m=
ode called network mode that offers very low bandwidth<br><br><div id=3D"gm=
ail-m_-3497708271369395004AppleMailSignature" dir=3D"ltr">Sent from my iPho=
ne</div><div dir=3D"ltr"><br>On Jul 15, 2019, at 4:27 AM, Koyel Das (Vehere=
) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></div><blockqu=
ote type=3D"cite"><div dir=3D"ltr">





<div id=3D"gmail-m_-3497708271369395004divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-s=
erif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,Not=
oColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymb=
ols">
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px">
Hi,</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px">
<br>
</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px">
The following USRP</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px">
<br>
</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" rel=3D"noopener n=
oreferrer" id=3D"gmail-m_-3497708271369395004LPlnk349954" target=3D"_blank"=
>https://www.ettus.com/all-products/usrp-e313/</a></p>
<div id=3D"gmail-m_-3497708271369395004LPBorder_GT_15631740463640.460973160=
3017766" style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;=
font-size:16px;width:885px;margin-bottom:20px;overflow:auto">
<table cellspacing=3D"0" id=3D"gmail-m_-3497708271369395004LPContainer_1563=
1740463610.5595525113046114" style=3D"width:796px;margin-top:20px;padding-t=
op:20px;padding-bottom:20px;border-top:1px dotted rgb(200,200,200);border-b=
ottom:1px dotted rgb(200,200,200);overflow:auto">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td colspan=3D"1" id=3D"gmail-m_-3497708271369395004ImageCell_1563174046362=
0.520711699452409" style=3D"width:250px;padding-right:20px">
<div id=3D"gmail-m_-3497708271369395004LPImageContainer_15631740463620.7982=
520787803893" style=3D"display:table;width:250px;height:131px;margin:auto">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" rel=3D"noopener n=
oreferrer" id=3D"gmail-m_-3497708271369395004LPImageAnchor_15631740463620.5=
859776582035903" style=3D"text-align:center;display:table-cell" target=3D"_=
blank"><img id=3D"gmail-m_-3497708271369395004LPThumbnailImageID_1563174046=
3620.0445211311981637" style=3D"vertical-align: bottom; display: inline-blo=
ck; width: 250px; height: 131px; max-width: 250px; border-width: 0px; max-h=
eight: 250px;" src=3D"https://www.ettus.com/wp-content/uploads/2019/01/E313=
_Front-Large_2-1200x630.jpg"></a></div>
</td>
<td colspan=3D"2" id=3D"gmail-m_-3497708271369395004TextCell_15631740463630=
.9983429177449736" style=3D"vertical-align:top;padding:0px">
<div id=3D"gmail-m_-3497708271369395004LPRemovePreviewContainer_15631740463=
630.5835837580145755"></div>
<div id=3D"gmail-m_-3497708271369395004LPTitle_15631740463630.9487633221229=
601" style=3D"color:rgb(0,120,215);font-size:21px;font-family:wf_segoe-ui_l=
ight,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quot;,&quot;Segoe UI&q=
uot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;line-heig=
ht:21px">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" rel=3D"noopener n=
oreferrer" id=3D"gmail-m_-3497708271369395004LPUrlAnchor_15631740463630.853=
8318560805709" style=3D"text-decoration-line:none" target=3D"_blank">USRP E=
313 | Ettus Research, a National Instruments
 Brand | The leader in Software Defined Radio (SDR)</a></div>
<div id=3D"gmail-m_-3497708271369395004LPMetadata_15631740463630.9319280120=
041624" style=3D"color:rgb(102,102,102);font-size:14px;font-family:wf_segoe=
-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-seri=
f,serif,EmojiFont;margin:10px 0px 16px;line-height:14px">
<a href=3D"http://www.ettus.com" target=3D"_blank">www.ettus.com</a></div>
<div id=3D"gmail-m_-3497708271369395004LPDescription_15631740463630.7323390=
913605139" style=3D"color:rgb(102,102,102);font-size:14px;font-family:wf_se=
goe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-s=
erif,serif,EmojiFont;overflow:hidden;max-height:100px;line-height:20px">
The USRP E313 is a rugged and weatherproof SDR designed for outdoor deploym=
ent. Containing an embedded USRP E310 inside an IP67-rated enclosure, the U=
SRP E313 provides ingress protection against dust and water with extensive =
testing to ensure operation under
 demanding environmental conditions.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-=
size:16px">
<span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;fon=
t-size:16px">has embedded processor I think. So is it possible that we don&=
#39;t use the embedded processor and use it like USRP 2955 that is capture =
data using gnuradio=C2=A0API and process
 it in our computer as we are doing with 2955?</span>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px">
</p>
<div><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFon=
t;font-size:16px"><br>
</span></div>
<br>
<p></p>
<p style=3D"margin-top:0px;margin-bottom:0px">Regards,</p>
<div id=3D"gmail-m_-3497708271369395004Signature">

<div id=3D"gmail-m_-3497708271369395004divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-s=
erif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,Not=
oColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymb=
ols">
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px;line-hei=
ght:16px">
<font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koyel Das =C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<br>
Senior =E2=80=93 Product Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: +919051132173=C2=A0|=C2=A0</font></font><font face=3D"Tahoma,serif" styl=
e=3D"font-size:16px"><font style=3D"font-size:9pt">T: +91=C2=A033 40545454 =
| F: +91=C2=A033 40545455 | W:=C2=A0<a href=3D"http://www.vehere.com/" rel=
=3D"noopener noreferrer" id=3D"gmail-m_-3497708271369395004LPNoLP" target=
=3D"_blank">www.vehere.com</a></font></font><font face=3D"Tahoma,serif" sty=
le=3D"font-size:16px"><font style=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font=
-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" rel=3D"noopener noreferrer" id=3D"gmail-m_-3497708271369395004LPNoLP"=
 title=3D"https://www.linkedin.com/company/vehere-interactive-p-ltd
Ctrl+Click or tap to follow the link" target=3D"_blank"><span style=3D"colo=
r:rgb(34,34,34);font-size:9.5pt;font-family:Arial,sans-serif,serif,EmojiFon=
t;text-decoration-line:none"><img border=3D"0" alt=3D"unnamed" style=3D"wid=
th: 18pt; height: 18pt;" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&am=
p;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.1=
&amp;disp=3Demb&amp;attbid=3DANGjdJ_cw8QOmJOuH5dOGgYLOxSybsCNVtf-NS_WwKXHuM=
OvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8KcKUu6kcoQwHmymFim1kkqNhKdcHOplQP4e4KtrW=
gsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&a=
mp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34);font-size=
:9.5pt;font-family:Arial,sans-serif,serif,EmojiFont">=C2=A0</span><a href=
=3D"https://twitter.com/VehereIndia" rel=3D"noopener noreferrer" id=3D"gmai=
l-m_-3497708271369395004LPNoLP" target=3D"_blank"><span style=3D"color:rgb(=
34,34,34);font-size:9.5pt;font-family:Arial,sans-serif,serif,EmojiFont;text=
-decoration-line:none"><img border=3D"0" alt=3D"unnamed (1)" style=3D"width=
: 18pt; height: 18pt;" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;=
ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.2&a=
mp;disp=3Demb&amp;attbid=3DANGjdJ9np2yLYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysv=
BjAQVxtHSIbIzZfOj-plEkGO73mWlh0cet3WXZglkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXF=
vlK4&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp=
;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34);font-size:9=
.5pt;font-family:Arial,sans-serif,serif,EmojiFont">=C2=A0</span><a href=3D"=
https://www.facebook.com/VehereIndia/" rel=3D"noopener noreferrer" id=3D"gm=
ail-m_-3497708271369395004LPNoLP" target=3D"_blank"><span style=3D"color:rg=
b(34,34,34);font-size:9.5pt;font-family:Arial,sans-serif,serif,EmojiFont;te=
xt-decoration-line:none"><img border=3D"0" alt=3D"unnamed (2)" style=3D"wid=
th: 18pt; height: 18pt;" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&am=
p;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.3=
&amp;disp=3Demb&amp;attbid=3DANGjdJ9JZdmekO-R6DmUlgNehr-eRw41OXSOu3PfaFGXC9=
8wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hjwSBYH5RwgNDRHAoz8EfzpBBa4gm0Wk9Ke6qojIC=
fael_k&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&a=
mp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34);font-size=
:9.5pt;font-family:Arial,sans-serif,serif,EmojiFont">=C2=A0=C2=A0</span><sp=
an style=3D"color:rgb(34,34,34);font-family:Tahoma,sans-serif,serif,EmojiFo=
nt"><br>
</span><br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India &amp; Asia since 2012!</i></font></font><font face=3D"Tahoma,s=
erif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><br>
<br>
The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive
 Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are n=
ot the addressee, or the person responsible for delivering it to the addres=
see, any disclosure, copying, distribution or any action taken or omitted t=
o be taken in reliance on it is
 prohibited and may be unlawful. If you have received this e-mail in error,=
 please notify the sender and remove this communication entirely from your =
system. The recipient acknowledges that no guarantee or any warranty is giv=
en as to completeness and accuracy
 of the content of the email. The recipient further acknowledges that the v=
iews contained in the email message are those of the sender and may not nec=
essarily reflect those of Vehere Interactive Pvt Ltd. Before opening and ac=
cessing the attachment please check
 and scan for virus. WARNING: Computer viruses can be transmitted via email=
. The recipient should check this email and any attachments for the presenc=
e of viruses. The company accepts no liability for any damage caused by any=
 virus transmitted by this email.</font></font><br>
<p></p>
</div>
</div>
</div>


</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>_______=
________________________________________</span><br><span>USRP-users mailing=
 list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a href=3D"http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
></span><br></div></blockquote></div>______________________________________=
_________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d320b0058db95bde--


--===============4413891570180228374==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4413891570180228374==--

