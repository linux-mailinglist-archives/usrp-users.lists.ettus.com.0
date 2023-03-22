Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C391E6C4C8D
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 14:57:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1AF338461D
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 09:56:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679493418; bh=KVQyuddWtl1GKWDabyxkpTleu53Dh7IEMmAD1hL8TwM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=a0xeWhQpPAwG5ursjPU+lmar5YdJOaDGDyFmRuR9BFLMGMeAHWmMT6bBL/HUDMuI+
	 P0me1y9MV60GbnvJ/5t6g0gwYvdWtzDoRZjNRGHypQUlr4h86cSZhNRwozPZbrLxKY
	 KAKhg1KnF9LtKMdbmldre4YwBNDX5ADNMVHXiu25mBp2Z3FPWOIjyC0xtD+fm3N4Pc
	 wUBq1/gqZbuDIkYpF6N2XmTaCIKjAL1krVfcsf+SbpdA/DZLigfJWn20+Uc5P9O8H8
	 7UoB97bc0a+fAxVozUk9hmOkoGsvj/S4xVYbZlBB7DWe/X+HQvZJsaqC4zVaDe4qai
	 pVFGI2LaPj5jg==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id F34883845EC
	for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 09:56:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ReeNNsFX";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id o12so73307499edb.9
        for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 06:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679493377;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u99N4jhxIQ4/YBGFugfJaFRK1iEU1KsTUNHhnOYOiFA=;
        b=ReeNNsFXDPqqdNc7E0+Uv6Lh9EYJyhHxduKkoq0Lb3d/z6wgo6/lcItHO0sF6SqnW1
         0upFzDIZaHSw2aak3lmD1AhQgr/Ku5L291JAOuD6DEwqzDdSTYt+pjh+mE2AfjdBkxto
         YnedUqPuiAmTkX7eoKH8030JNmliwoPYwc1WDWHTMd9kXtE57XpLlS3hN5Pg4/0u0ai6
         R2Kk/i2nMMKnMwW9RYbOjQ9qtDfimJicgd2aH3ySj2QmQhwIsLdCWpBdU8gdCgS7QHEY
         Sf424NAP77u7b2Bs4LSqEyPrdgARmcQJk68Zg2iJJmifFEghwYugqlpCbNNwtnwGsFMa
         NqOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679493377;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u99N4jhxIQ4/YBGFugfJaFRK1iEU1KsTUNHhnOYOiFA=;
        b=w5xrW/HTBQ1thjDbnapkzSYM0UHxOB3+zcUbp/JVIM51H1I9lM05Wf6ZKtoeGASY4O
         yqTQiFFHFrvy5OTAwrDA67ykws1bNc091EbBtUvHngeYrgXriD/WCe6oLA7FAPQHLesN
         iKTpIjV/0OP0O1KWz1PnQSI7DNfH1OsMNxbfaMqkpOIiLVigAY6/E06BhaKt/IQS9Cjf
         Ae7cncV7LFeOj/pJHMdsEpxwsXCvjkc3joZJyMRaNtGXprOY4g5V89JnXzT890JvdP4M
         mGSfofx/S6jw6J7osE21s2lD8eVzHMajIIZGRB9x5PjYT47OXHxnx7PEi/hRnIX3eq5B
         akNw==
X-Gm-Message-State: AO0yUKVfcTtrq0OGTTn+9E04NvOC+5qnOAPrlwpt6BjklyEYdqTJUg+/
	HfAE3cbMV0EuCzU8jOe+z+oFX5NjrjNAxSk7gfCEywUn
X-Google-Smtp-Source: AK7set+Fb4RMLTj+T7hh2NdLFA49dc2KXzI9YSkFk9ViKUNxhmtwfza8A3+H/wmVBkxAzzfNriquqKpZBktJwuXozTg=
X-Received: by 2002:a17:907:d48e:b0:8dd:76b6:65b3 with SMTP id
 vj14-20020a170907d48e00b008dd76b665b3mr3575971ejc.4.1679493376678; Wed, 22
 Mar 2023 06:56:16 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB91263A201E869804E985BCD9EC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK5UG5wy7MQxJj5bVpHWt4K3gFU=ks=DCdFr1uQQdDJZGA@mail.gmail.com> <SJ0PR09MB9126C531C901C0141417CDECEC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB9126C531C901C0141417CDECEC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 22 Mar 2023 09:56:05 -0400
Message-ID: <CAEXYVK6EiG-7Tif=0QKGec9Mm=G06v+wwGT1hGyWi-3b=s8ZAw@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: Z6R3N7S2IJ4LBF5IRTP3K4CEYCZSVTBT
X-Message-ID-Hash: Z6R3N7S2IJ4LBF5IRTP3K4CEYCZSVTBT
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wideband IQ Daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z6R3N7S2IJ4LBF5IRTP3K4CEYCZSVTBT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6986153824741335513=="

--===============6986153824741335513==
Content-Type: multipart/alternative; boundary="0000000000001ea2ee05f77d8615"

--0000000000001ea2ee05f77d8615
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You're right - I completely missed that part of the email.

My apologies.

Brian

On Tue, Mar 21, 2023 at 7:12=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Yes, as stated in the original post 'Basic-RX with a minimum of 1 MHz'.
> The DC is cutoff by the balun on the basicRX making it unsuitable for IQ.
>
> ________________________
>
> Eugene Grayver, Ph.D.
> Aerospace Corp., Principal Engineer
> Tel: 310.336.1274
> ________________________
>
> ------------------------------
> *From:* Brian Padalino <bpadalino@gmail.com>
> *Sent:* Tuesday, March 21, 2023 3:18 PM
> *To:* Eugene Grayver <eugene.grayver@aero.org>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Wideband IQ Daughterboard
>
> On Tue, Mar 21, 2023 at 6:12=E2=80=AFPM Eugene Grayver <eugene.grayver@ae=
ro.org>
> wrote:
>
> Hello,
>
> I want to use an external IQ mixer with an external LO.  My signal is 160
> MHz wide, which fits nicely into the nominal complex 200 MHz Nyquist of t=
he
> X310.  Unfortunately the only daughterboards for direct access to the ADC=
s
> are LFRX which maxes out at 30 MHz, and the Basic-RX with a minimum of 1
> MHZ.
>
> I am thinking of spinning a custom daughter board derived from LFRX with =
a
> wideband differential driver such as
> https://www.analog.com/media/en/technical-documentation/data-sheets/6406f=
c.pdf or
> alternatively just replacing the chip on an LFRX since these appear to be
> footprint compatible.
>
> Separately, I was looking at LFTX schematics and the part # for the
> amplifier is not specified.  Can somebody at Ettus/NI save me some time a=
nd
> lookup that part #.
>
> Comments?
>
>
> Have you considered the BasicRX?
>
>   https://www.ettus.com/all-products/basicrx/
>   https://files.ettus.com/schematics/basic_dbs/BasicRX.pdf
>
> Brian
>

--0000000000001ea2ee05f77d8615
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You&#39;re right - I completely missed that part of the em=
ail.<div><br></div><div>My apologies.</div><div><br>Brian</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar =
21, 2023 at 7:12=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:eugene.gra=
yver@aero.org">eugene.grayver@aero.org</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div class=3D"msg6627413906338424829"=
>




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Yes, as stated in the original post &#39;<span style=3D"background-color:rg=
b(255,255,255);display:inline">Basic-RX with a minimum of 1 MHz&#39;.=C2=A0=
 The DC is cutoff by the balun on the basicRX making it unsuitable for IQ.<=
/span></div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_6627413906338424829Signature">
<div>
<div id=3D"m_6627413906338424829divtagdefaultwrapper" dir=3D"ltr" style=3D"=
color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:1=
2pt;background-color:rgb(255,255,255)">
<p><span style=3D"color:black;font-family:Arial,sans-serif;font-size:10pt">=
<span id=3D"m_6627413906338424829ms-rterangepaste-start"></span><span style=
=3D"color:rgb(0,0,0);font-family:Arial,sans-serif;font-size:13.33px">______=
__________________</span><span id=3D"m_6627413906338424829ms-rterangepaste-=
end"></span><br>
</span></p>
<p><span style=3D"color:black;font-family:Arial,sans-serif;font-size:10pt">=
Eugene Grayver, Ph.D.<br>
Aerospace Corp., Principal Engineer<br>
Tel: 310.336.1274<br>
________________________</span><br>
</p>
</div>
</div>
</div>
</div>
<div id=3D"m_6627413906338424829appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_6627413906338424829divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> =
Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank"=
>bpadalino@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, March 21, 2023 3:18 PM<br>
<b>To:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" ta=
rget=3D"_blank">eugene.grayver@aero.org</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Wideband IQ Daughterboard</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Tue, Mar 21, 2023 at 6:12=E2=80=AFPM Eugene Grayver &lt=
;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayve=
r@aero.org</a>&gt; wrote:<br>
</div>
<div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I want to use an external IQ mixer with an external LO.=C2=A0 My signal is =
160 MHz wide, which fits nicely into the nominal complex 200 MHz Nyquist of=
 the X310.=C2=A0 Unfortunately the only daughterboards for direct access to=
 the ADCs are LFRX which maxes out at 30 MHz,
 and the Basic-RX with a minimum of 1 MHZ.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I am thinking of spinning a custom daughter board derived from LFRX with a =
wideband differential driver such as=C2=A0<a href=3D"https://www.analog.com=
/media/en/technical-documentation/data-sheets/6406fc.pdf" id=3D"m_662741390=
6338424829x_m_29364865378333502LPlnk885883" target=3D"_blank">https://www.a=
nalog.com/media/en/technical-documentation/data-sheets/6406fc.pdf</a>=C2=A0=
or
 alternatively just replacing the chip on an LFRX since these appear to be =
footprint compatible.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Separately, I was looking at LFTX schematics and the part # for the amplifi=
er is not specified.=C2=A0 Can somebody at Ettus/NI save me some time and l=
ookup that part #.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Comments?</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Have you considered the BasicRX?</div>
<div><br>
</div>
<div>=C2=A0=C2=A0<a href=3D"https://www.ettus.com/all-products/basicrx/" ta=
rget=3D"_blank">https://www.ettus.com/all-products/basicrx/</a></div>
<div>=C2=A0=C2=A0<a href=3D"https://files.ettus.com/schematics/basic_dbs/Ba=
sicRX.pdf" target=3D"_blank">https://files.ettus.com/schematics/basic_dbs/B=
asicRX.pdf</a></div>
<div><br>
</div>
<div>Brian</div>
</div>
</div>
</div>
</div>

</div></blockquote></div>

--0000000000001ea2ee05f77d8615--

--===============6986153824741335513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6986153824741335513==--
