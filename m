Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52416305E24
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jan 2021 15:24:18 +0100 (CET)
Received: from [::1] (port=54800 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4ljy-00036j-K2; Wed, 27 Jan 2021 09:24:14 -0500
Received: from mail-oo1-f53.google.com ([209.85.161.53]:45163)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l4lju-00031J-Mx
 for USRP-users@lists.ettus.com; Wed, 27 Jan 2021 09:24:10 -0500
Received: by mail-oo1-f53.google.com with SMTP id o5so551624oop.12
 for <USRP-users@lists.ettus.com>; Wed, 27 Jan 2021 06:23:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x6MzOUZXWtizJZLxBPEJ93f9/WGcnOFGTY6hqEmUirU=;
 b=ho0OrxKQTJn1jfOV0sqPNBPvpSeESMvWxAgZrIQtfIGSluUGLRX1CONVR3gsE4MHTI
 CPbG2xkPjigoU55O8yqNmJpKEFNjvjXuN9kCtwb34zFZwdkbCgRaMVKZr29XcvhSKPgp
 Ch3UPFptC1z8n2az++AjScaXxZRmi67mZUz/jKkEGeEZFuToTlvfFWeqdKf+mSjYkMtB
 sxr69JQWdL4V6yh8/lPyT1nt+6DkCblJ+dz5sIHtwI68SwOECohUGkh1t9pLMJuCyxy1
 Lw3ExRaamw73CDETiZ4ztXzju37zJhhkQGCCzY3JRiArxiYwRx5UEPRy4KekKvBlQthQ
 /iTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x6MzOUZXWtizJZLxBPEJ93f9/WGcnOFGTY6hqEmUirU=;
 b=iH2juxlsMjqDZ5vIPGPC4LBMu6g7kHRRcdjkzdEk3Eu+seHYLOqgMniHEYjsfK3Smh
 z4pSBwZ32M0Xx2URL3LRKRan2heEQOL+ALRvAVa24SIVWwJi5FlCVkJSFYFxEx1YTTA8
 vgIMsEh4S2vZbWbhFcfQ9rOXFZh9NVc+BSk+BqO9LaYbCQwyTngbpDeG/qudgntAQft7
 aGvY38mBqlcXW4DfcVWF7vmw8NqAv4NVbWGdwXavXzrmmO7oqy0KRfg1Zv9P3WGOoRqc
 JL/b54vyjzvt5/MNJzQ83lAKcIkfFtn8kqeBpgZ8t65Pv3nlXbtT3EKZ/jKB4tOl9KCH
 OxLg==
X-Gm-Message-State: AOAM531Dhai/ESRejSujLp+aHLeE8hGwIf/pwrMCGqb7sfqWR/tKvrqC
 g/otcWLHIiaM3gCNq8XE/DrgFnzkR3XtE3m/sftgAA==
X-Google-Smtp-Source: ABdhPJxhUu9+JC/N2WRoZkfOiylIV5GQzEUauwFmOvyTWXofuwRkhneghBf4o3gX2ND7QNpLz9zYjQjRAg7LiwdhXSw=
X-Received: by 2002:a05:6820:283:: with SMTP id
 q3mr7848876ood.13.1611757409586; 
 Wed, 27 Jan 2021 06:23:29 -0800 (PST)
MIME-Version: 1.0
References: <MA1PR01MB2588D349CDCE2F00C0B209C090A90@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <5FFF077E.9040704@gmail.com>
 <MA1PR01MB258853948A0738D874D0141690BB0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <MA1PR01MB2588B58A4784F6A8BEC11D0490BB0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB2588B58A4784F6A8BEC11D0490BB0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Date: Wed, 27 Jan 2021 09:23:18 -0500
Message-ID: <CAB__hTSB9gS9UJNkSkd1qCA44f9A_M=9KPtq6boBNwpfs=Ya4g@mail.gmail.com>
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>
Subject: Re: [USRP-users] USRP sample rate and bandwidth
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2778511805156303629=="
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

--===============2778511805156303629==
Content-Type: multipart/alternative; boundary="000000000000dd10c505b9e2838f"

--000000000000dd10c505b9e2838f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On the 2955, the Radio RF bandwidth is fixed at 160 MHz and the A/D rate is
fixed at 200 MS/s. You can't change these but you can choose to downconvert
the signal to a lower sample rate in the FPGA using the DDC using integer
decimation with digital filtering.  The digital filtering works better with
even decimation factors.  On the 2954, the RF bandwidth is fixed at 80 MHz
and the A/D rate is fixed at 100 MS/s. You can also choose decimation via
DDC if you want.
Rob

On Wed, Jan 27, 2021 at 6:02 AM Koyel Das (Vehere) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I am using usrp 2955/2954
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
> ------------------------------
> *From:* Koyel Das (Vehere) <koyel.das@vehere.com>
> *Sent:* Wednesday, January 27, 2021 4:27 PM
> *To:* USRP-users@lists.ettus.com <USRP-users@lists.ettus.com>; Marcus D.
> Leech <patchvonbraun@gmail.com>
> *Subject:* Re: [USRP-users] USRP sample rate and bandwidth
>
> Thanks Marcus and Kyeong for the information. Could you also provide
> information on how much is the analog bandwidth being set ahead of the AD=
C?
> Is it greater than 20 MHz? If so then will my setting bandwidth =3D 20 MH=
z
> filter 20 MHz band out of the total band?
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
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Wednesday, January 13, 2021 8:15 PM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] USRP sample rate and bandwidth
>
> On 01/13/2021 01:08 AM, Koyel Das (Vehere) via USRP-users wrote:
>
> Hi,
>
> The USRP sample rate and bandwidth are two different parameters in
> gnuradio so if I want 20 MHz bandwidth and 100 MSps sample rate then will
> setting bandwidth =3D 20 MHz and sample rate =3D 100 MHz serve my purpose=
?
> Normally sample rate (100 MHz in this case) is the bandwidth unless filte=
r
> is used so does that mean USRP is filtering out 20 MHz keeping sample rat=
e
> at 100 MHz by itself?
>
> Regards,
>
> Koyel Das
> Senior =E2=80=93 Product Engineer
> Vehere | Proactive Communications Intelligence & Cyber Defence
> M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W:
> www.vehere.com
>
> Indeed, FOR HARDWARE WITH VARIABLE BANDWIDTH, this parameter sets the
> analog filter bandwidth ahead of the ADC.
>
> Many hardware configurations, however, have fixed analog bandwidth ahead
> of the ADC, and this parameter setting will do
>   nothing in those situations.
>
> Hardware based on the AD9361 or AD9371 (USRP B2xx, USRP N3xx, USRP E31x)
> has this control, as do some of the older
>   daughtercards--DBSRX2, TVRX2.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000dd10c505b9e2838f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On the 2955, the Radio RF bandwidth is fi=
xed at 160 MHz and the A/D rate is fixed at 200 MS/s. You can&#39;t change =
these but you can choose to downconvert the signal to a lower sample rate i=
n the FPGA using the DDC using integer decimation with digital filtering.=
=C2=A0 The digital filtering works better with even decimation factors.=C2=
=A0 On the 2954, the RF bandwidth is fixed at 80 MHz and the A/D rate is fi=
xed at 100 MS/s. You can also choose decimation via DDC if you want.=C2=A0<=
div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, Jan 27, 2021 at 6:02 AM Koyel Das (Vehere) via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am using usrp 2955/2954</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Regards,</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_-8828170130624458856Signature">
<div>

<div id=3D"gmail-m_-8828170130624458856divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-s=
erif">
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<p style=3D"margin-top:0px;margin-bottom:0px;font-family:Calibri,Helvetica,=
sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quo=
t;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Emo=
jiSymbols;font-size:16px;line-height:16px">
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
=3D"noopener noreferrer" id=3D"gmail-m_-8828170130624458856LPNoLP" target=
=3D"_blank">www.vehere.com</a></font></font><font face=3D"Tahoma,serif" sty=
le=3D"font-size:16px"><font style=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font=
-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" rel=3D"noopener noreferrer" id=3D"gmail-m_-8828170130624458856LPNoLP"=
 target=3D"_blank"><span style=3D"color:rgb(34,34,34);font-size:9.5pt;font-=
family:Arial,sans-serif,serif,EmojiFont;text-decoration-line:none"><img bor=
der=3D"0" alt=3D"unnamed" style=3D"width: 18pt; height: 18pt;" src=3D"https=
://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp=
;th=3D15cd46f4a213fe89&amp;attid=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ_c=
w8QOmJOuH5dOGgYLOxSybsCNVtf-NS_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8Kc=
KUu6kcoQwHmymFim1kkqNhKdcHOplQP4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D149=
8219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span =
style=3D"color:rgb(34,34,34);font-size:9.5pt;font-family:Arial,sans-serif,s=
erif,EmojiFont">=C2=A0</span><a href=3D"https://twitter.com/VehereIndia" re=
l=3D"noopener noreferrer" id=3D"gmail-m_-8828170130624458856LPNoLP" target=
=3D"_blank"><span style=3D"color:rgb(34,34,34);font-size:9.5pt;font-family:=
Arial,sans-serif,serif,EmojiFont;text-decoration-line:none"><img border=3D"=
0" alt=3D"unnamed (1)" style=3D"width: 18pt; height: 18pt;" src=3D"https://=
mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=
=3D15cd46f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;attbid=3DANGjdJ9np2y=
LYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-plEkGO73mWlh0cet3WXZ=
glkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-h48&amp;ats=3D149821=
9245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span sty=
le=3D"color:rgb(34,34,34);font-size:9.5pt;font-family:Arial,sans-serif,seri=
f,EmojiFont">=C2=A0</span><a href=3D"https://www.facebook.com/VehereIndia/"=
 rel=3D"noopener noreferrer" id=3D"gmail-m_-8828170130624458856LPNoLP" targ=
et=3D"_blank"><span style=3D"color:rgb(34,34,34);font-size:9.5pt;font-famil=
y:Arial,sans-serif,serif,EmojiFont;text-decoration-line:none"><img border=
=3D"0" alt=3D"unnamed (2)" style=3D"width: 18pt; height: 18pt;" src=3D"http=
s://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&am=
p;th=3D15cd46f4a213fe89&amp;attid=3D0.3&amp;disp=3Demb&amp;attbid=3DANGjdJ9=
JZdmekO-R6DmUlgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hj=
wSBYH5RwgNDRHAoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&amp;ats=3D14=
98219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span=
 style=3D"color:rgb(34,34,34);font-size:9.5pt;font-family:Arial,sans-serif,=
serif,EmojiFont">=C2=A0=C2=A0</span><span style=3D"color:rgb(34,34,34);font=
-family:Tahoma,sans-serif,serif,EmojiFont"><br>
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
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
</div>
</div>
</div>
</div>
<div id=3D"gmail-m_-8828170130624458856appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-8828170130624458856divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> Koyel Das (Vehere) &lt;<a href=3D"mailto:koyel.das@vehere.com" targe=
t=3D"_blank">koyel.das@vehere.com</a>&gt;<br>
<b>Sent:</b> Wednesday, January 27, 2021 4:27 PM<br>
<b>To:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;; Marcus D. Leech=
 &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonb=
raun@gmail.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] USRP sample rate and bandwidth</font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks Marcus and Kyeong for the information. Could you also provide inform=
ation on how much is the analog bandwidth being set ahead of the ADC? Is it=
 greater than 20 MHz? If so then will my setting bandwidth =3D 20 MHz filte=
r 20 MHz band out of the total band?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Regards,</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_-8828170130624458856x_Signature">
<div>

<div id=3D"gmail-m_-8828170130624458856x_divtagdefaultwrapper" dir=3D"ltr" =
style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans=
-serif">
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<p style=3D"margin-top:0px;margin-bottom:0px;font-family:Calibri,Helvetica,=
sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quo=
t;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Emo=
jiSymbols;font-size:16px;line-height:16px">
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
=3D"noopener noreferrer" id=3D"gmail-m_-8828170130624458856LPNoLP" target=
=3D"_blank">www.vehere.com</a></font></font><font face=3D"Tahoma,serif" sty=
le=3D"font-size:16px"><font style=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font=
-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" rel=3D"noopener noreferrer" id=3D"gmail-m_-8828170130624458856LPNoLP"=
 target=3D"_blank"><span style=3D"color:rgb(34,34,34);font-size:9.5pt;font-=
family:Arial,sans-serif,serif,EmojiFont;text-decoration-line:none"><img bor=
der=3D"0" alt=3D"unnamed" style=3D"width: 18pt; height: 18pt;" src=3D"https=
://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp=
;th=3D15cd46f4a213fe89&amp;attid=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ_c=
w8QOmJOuH5dOGgYLOxSybsCNVtf-NS_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8Kc=
KUu6kcoQwHmymFim1kkqNhKdcHOplQP4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D149=
8219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span =
style=3D"color:rgb(34,34,34);font-size:9.5pt;font-family:Arial,sans-serif,s=
erif,EmojiFont">=C2=A0</span><a href=3D"https://twitter.com/VehereIndia" re=
l=3D"noopener noreferrer" id=3D"gmail-m_-8828170130624458856LPNoLP" target=
=3D"_blank"><span style=3D"color:rgb(34,34,34);font-size:9.5pt;font-family:=
Arial,sans-serif,serif,EmojiFont;text-decoration-line:none"><img border=3D"=
0" alt=3D"unnamed (1)" style=3D"width: 18pt; height: 18pt;" src=3D"https://=
mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=
=3D15cd46f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;attbid=3DANGjdJ9np2y=
LYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-plEkGO73mWlh0cet3WXZ=
glkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-h48&amp;ats=3D149821=
9245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span sty=
le=3D"color:rgb(34,34,34);font-size:9.5pt;font-family:Arial,sans-serif,seri=
f,EmojiFont">=C2=A0</span><a href=3D"https://www.facebook.com/VehereIndia/"=
 rel=3D"noopener noreferrer" id=3D"gmail-m_-8828170130624458856LPNoLP" targ=
et=3D"_blank"><span style=3D"color:rgb(34,34,34);font-size:9.5pt;font-famil=
y:Arial,sans-serif,serif,EmojiFont;text-decoration-line:none"><img border=
=3D"0" alt=3D"unnamed (2)" style=3D"width: 18pt; height: 18pt;" src=3D"http=
s://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&am=
p;th=3D15cd46f4a213fe89&amp;attid=3D0.3&amp;disp=3Demb&amp;attbid=3DANGjdJ9=
JZdmekO-R6DmUlgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hj=
wSBYH5RwgNDRHAoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&amp;ats=3D14=
98219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span=
 style=3D"color:rgb(34,34,34);font-size:9.5pt;font-family:Arial,sans-serif,=
serif,EmojiFont">=C2=A0=C2=A0</span><span style=3D"color:rgb(34,34,34);font=
-family:Tahoma,sans-serif,serif,EmojiFont"><br>
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
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
</div>
</div>
</div>
</div>
<div id=3D"gmail-m_-8828170130624458856x_appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-8828170130624458856x_divRplyFwdMsg" dir=3D"ltr"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>F=
rom:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.co=
m" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf o=
f Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, January 13, 2021 8:15 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] USRP sample rate and bandwidth</font>
<div>=C2=A0</div>
</div>
<div style=3D"background-color:rgb(255,255,255)">
<div>On 01/13/2021 01:08 AM, Koyel Das (Vehere) via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
The USRP sample rate and bandwidth are two different parameters in gnuradio=
 so if I want 20 MHz bandwidth and 100 MSps sample rate then will setting b=
andwidth =3D 20 MHz and sample rate =3D 100 MHz serve my purpose? Normally =
sample rate (100 MHz in this case) is
 the bandwidth unless filter is used so does that mean USRP is filtering ou=
t 20 MHz keeping sample rate at 100 MHz by itself?</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Regards,</div>
<div id=3D"gmail-m_-8828170130624458856x_x_Signature">
<div>

<div id=3D"gmail-m_-8828170130624458856x_x_divtagdefaultwrapper" dir=3D"ltr=
" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sa=
ns-serif">
<p><font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koyel Das =C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<br>
Senior =E2=80=93 Product Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: +919051132173=C2=A0|=C2=A0</font></font><font face=3D"Tahoma,serif" styl=
e=3D"font-size:16px"><font style=3D"font-size:9pt">T: +91=C2=A033 40545454 =
| F: +91=C2=A033 40545455 | W:=C2=A0<a href=3D"http://www.vehere.com/" rel=
=3D"noopener noreferrer" id=3D"gmail-m_-8828170130624458856LPNoLP" target=
=3D"_blank">www.vehere.com</a></font></font><font face=3D"Tahoma,serif" sty=
le=3D"font-size:16px"><font style=3D"font-size:9pt"><i></i></font></font><b=
r>
</div>
</div>
</div>
</div>
</blockquote>
Indeed, FOR HARDWARE WITH VARIABLE BANDWIDTH, this parameter sets the analo=
g filter bandwidth ahead of the ADC.<br>
<br>
Many hardware configurations, however, have fixed analog bandwidth ahead of=
 the ADC, and this parameter setting will do<br>
=C2=A0 nothing in those situations.<br>
<br>
Hardware based on the AD9361 or AD9371 (USRP B2xx, USRP N3xx, USRP E31x) ha=
s this control, as do some of the older<br>
=C2=A0 daughtercards--DBSRX2, TVRX2.<br>
<br>
<br>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000dd10c505b9e2838f--


--===============2778511805156303629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2778511805156303629==--

