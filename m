Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CF86CB00C
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 22:40:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D333138484F
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 16:40:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679949624; bh=sD5VtqHD1GQ4+3B5qXHgYk7X4L+bjvQc5OX60P2dZCY=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=cFIv97ukJXbTuJsuLgbvfpGAZJO70Ik70SdPdN83MnLm8P8LFxBirhrB0HzwVOY+N
	 bQc+MzEWO1g/OBwm9ziKeIXTAtx5qRIcE1xDhdbRU7ZJMdoWEadXgR+Yp9JYAXnesI
	 TJ2FXOW7T+pT8/y2GzszVhbd733R+cw3bkdtJihNN9ojyFWTnt7ucFDrF3QMaU6z+6
	 OEzBhNn+dXzptIw3oA9GHpaxjmThIMBtGm+Y31dznng0OwdciN2gNaJ8/vLOw2+0qf
	 KfRZ7r4wbt8QqLWgwV331Fk7lYMOwYMjs6KS8eeQkNusKyNhswRI9qgIKf8vuiKVM6
	 QUnnVQXfWzaxw==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 27B39384962
	for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 16:39:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="QIHIlG97";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id h8so41317273ede.8
        for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 13:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1679949575;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hYjgZoMfFyd17is9pcPXls5HMEa+GfNGRW9cAt5O02Y=;
        b=QIHIlG97vpYGhgRVXkXQJWtTfDaPNekjhNtEcv7KXSuQgl9th70aF+ts9elY6ahRi5
         3VBmBzWmpuZhNSSoJnI3cZ7SYXOZSJm9Qp4lREq+fMhwKyKkVnhipq+Ikxlq+OaRbCT0
         KVkfcqL3/8W3LLEGa7PaBwOLrzux1PXJ7gOWSSv4nQCFQLzO59ZVZfkIoMkSIEYEidX1
         DSxYx3Rin3CwFEWFDqSpScXsVYIuedqYWll3fqhdmYNJfq57DFl4CDlpV33Lb09IYHX3
         TqDYeBqQljyHXNFqrEs1sIRXSPgsBqXxakC44P7QqfsSRQmFsa9ez+0zYkw/d+VP7eU7
         5pFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679949575;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hYjgZoMfFyd17is9pcPXls5HMEa+GfNGRW9cAt5O02Y=;
        b=K3fXNi8aLFRZFbjWrq8G4vGyiw0YSkHmg5Ksucnw0PGDS152aiCvInLT9On+ES7lqP
         r7LYyHd9J8txtLiJV7mfDt9E/Yw9uaxrR+0K0zZXRevpKDXxaXArbqhBCqsfaWxCLEQI
         8SqYPDm6KZxYoPyjN7eTZSOgvDWLRjGilPrd8uTqL51WxXfOixD5QqavKZRoRJ2JASux
         5JLT0S2eM0juVPZccoetZ6oxtS+iUVKabEgTf8dCkXIn7ZMItYaRs4wrSzPEfkyK22ze
         mpP7zWMGfIUNA/v2+IpgMCz3m7ovauko86eheTaOj2Uv+OMVTEqI8maDStqd4BQ1mxPX
         CPtg==
X-Gm-Message-State: AAQBX9cT78FfdGDW/TVvvThlybdvQgnsZnxDXfFUHSA08F0BeIMjmlFR
	3DNQ8d8Gg8BQEj+ycYtRXSL7wj201yNjzE1MussLY/Gb5gvnWpd0dv0=
X-Google-Smtp-Source: AKy350bRcPiSyvvyDR61+KbeQMMBqVT29cjBwpGR/VRFjTzfEM75EmZJjkNTOdVDrZkAcFfa7h1RpLARgeqxF2p+Jn8=
X-Received: by 2002:a50:9fe2:0:b0:4fa:5b7d:ebb4 with SMTP id
 c89-20020a509fe2000000b004fa5b7debb4mr6631381edf.7.1679949574645; Mon, 27 Mar
 2023 13:39:34 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB91263A201E869804E985BCD9EC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK5UG5wy7MQxJj5bVpHWt4K3gFU=ks=DCdFr1uQQdDJZGA@mail.gmail.com>
 <SJ0PR09MB9126C531C901C0141417CDECEC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK6EiG-7Tif=0QKGec9Mm=G06v+wwGT1hGyWi-3b=s8ZAw@mail.gmail.com>
 <CA+K5gze-WqPNY6a8hRudbRqLhPfN8POGSUHnaRVrkW+VpOxxqQ@mail.gmail.com> <SJ0PR09MB9126F7B69493DCF3A0A4B508EC8B9@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB9126F7B69493DCF3A0A4B508EC8B9@SJ0PR09MB9126.namprd09.prod.outlook.com>
Date: Mon, 27 Mar 2023 16:39:23 -0400
Message-ID: <CAB__hTQwaaQSNg198NT7KQ_qMVrPNqicaqyxcepQWAwgnkknxw@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: LFLLBAKNNYD3N52ZLNA3OSOR7AJ7EFKM
X-Message-ID-Hash: LFLLBAKNNYD3N52ZLNA3OSOR7AJ7EFKM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wideband IQ Daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LFLLBAKNNYD3N52ZLNA3OSOR7AJ7EFKM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4820700862890386394=="

--===============4820700862890386394==
Content-Type: multipart/alternative; boundary="000000000000a393d405f7e7bdd3"

--000000000000a393d405f7e7bdd3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Eugene,
I don't know why the basic Rx has a lower frequency listed.  It seems
inconsistent with other notes such as the following found here
<https://kb.ettus.com/Selecting_a_RF_Daughterboard>

Some USRP radio users elect to use an external front end providing
upconversion, downconversion, amplification and filtering functionality. In
these cases, the frontend often outputs an intermediate frequency (IF). It
is also possible for the frontend to provide an analog, quadrature
interface. In either case the BasicRX/BasicTX and LFRX/LFTX daughterboards
are good candidates, as they provide a unity gain interface to the ADC(s)
and DAC(s) of the USRP hardware.

I have not tried so I can't confirm if it will work. I can only say that it
was my understanding that the Basic Rx could be used for your specific
application.
Rob

On Mon, Mar 27, 2023 at 12:08=E2=80=AFPM Eugene Grayver <eugene.grayver@aer=
o.org>
wrote:

> Yes, as evidenced by UBX-160.  X310 can stream 200 Msps complex, which is
> sufficient for 160 MHz of BW.
>
> ________________________
>
> Eugene Grayver, Ph.D.
> Aerospace Corp., Principal Engineer
> Tel: 310.336.1274
> ________________________
> ------------------------------
> *From:* Robert McGwier <rwmcgwier@gmail.com>
> *Sent:* Sunday, March 26, 2023 7:50 PM
> *To:* Brian Padalino <bpadalino@gmail.com>
> *Cc:* Eugene Grayver <eugene.grayver@aero.org>; usrp-users <
> usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Re: Wideband IQ Daughterboard
>
> Can the  existing firmware support that bandwidth? The 10Gbps Ethernet ca=
n
> but I am not sure about the rest of the USRP. I own two of them and have
> never tried to do that.
>
> Bob
>
>
> On Wed, Mar 22, 2023 at 9:58 AM Brian Padalino <bpadalino@gmail.com>
> wrote:
>
> You're right - I completely missed that part of the email.
>
> My apologies.
>
> Brian
>
> On Tue, Mar 21, 2023 at 7:12=E2=80=AFPM Eugene Grayver <eugene.grayver@ae=
ro.org>
> wrote:
>
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
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> --
> Dr. Robert W McGwier, Ph.D.
> Affiliated Faculty, Virginia Tech
> Affiliated Faculty, University of Scranton
> Former ARDC Member of Board
> N4HY: ARRL, TAPR, AMSAT, EARC, CSVHFS
> Sky: AAVSO, Sky360, explorescu.org, Skyscrapers
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a393d405f7e7bdd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Eugene,<div>I don&#39;t know why the b=
asic Rx has a lower frequency listed.=C2=A0 It seems inconsistent with othe=
r notes such as the following found <a href=3D"https://kb.ettus.com/Selecti=
ng_a_RF_Daughterboard">here</a></div><blockquote style=3D"margin:0px 0px 0p=
x 40px;border:none;padding:0px"><div><font color=3D"#0000ff">Some USRP radi=
o users elect to use an external front end providing upconversion, downconv=
ersion, amplification and filtering functionality. In these cases, the fron=
tend often outputs an intermediate frequency (IF). It is also possible for =
the frontend to provide an analog, quadrature interface. In either case the=
 BasicRX/BasicTX and LFRX/LFTX daughterboards are good candidates, as they =
provide a unity gain interface to the ADC(s) and DAC(s) of the USRP hardwar=
e.</font></div></blockquote><div>I have not tried so I can&#39;t confirm if=
 it will work. I can only say that it was my understanding that the Basic R=
x could be used for your specific application.</div><div>Rob</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, M=
ar 27, 2023 at 12:08=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:eugene=
.grayver@aero.org">eugene.grayver@aero.org</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-847810175369153=
456">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Yes, as evidenced by UBX-160.=C2=A0 X310 can stream 200 Msps complex, which=
 is sufficient for 160 MHz of BW.</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-847810175369153456Signature">
<div>
<div id=3D"m_-847810175369153456divtagdefaultwrapper" dir=3D"ltr" style=3D"=
color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:1=
2pt;background-color:rgb(255,255,255)">
<p><span style=3D"color:black;font-family:Arial,sans-serif;font-size:10pt">=
<span id=3D"m_-847810175369153456ms-rterangepaste-start"></span><span style=
=3D"color:rgb(0,0,0);font-family:Arial,sans-serif;font-size:13.33px">______=
__________________</span><span id=3D"m_-847810175369153456ms-rterangepaste-=
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
<div id=3D"m_-847810175369153456appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-847810175369153456divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Robert McGwier &lt;<a href=3D"mailto:rwmcgwier@gmail.com" target=3D"_blank"=
>rwmcgwier@gmail.com</a>&gt;<br>
<b>Sent:</b> Sunday, March 26, 2023 7:50 PM<br>
<b>To:</b> Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=
=3D"_blank">bpadalino@gmail.com</a>&gt;<br>
<b>Cc:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" ta=
rget=3D"_blank">eugene.grayver@aero.org</a>&gt;; usrp-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Wideband IQ Daughterboard</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"auto">Can the =C2=A0existing firmware support that bandwidth? T=
he 10Gbps Ethernet can but I am not sure about the rest of the USRP. I own =
two of them and have never tried to do that.=C2=A0</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Bob</div>
<div dir=3D"auto"><br>
</div>
<div><br>
<div>
<div dir=3D"ltr">On Wed, Mar 22, 2023 at 9:58 AM Brian Padalino &lt;<a href=
=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpadalino@gmail.com</a>&g=
t; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">You&#39;re right - I completely missed that part of the em=
ail.
<div><br>
</div>
<div>My apologies.</div>
</div>
<div dir=3D"ltr">
<div><br>
Brian</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Tue, Mar 21, 2023 at 7:12=E2=80=AFPM Eugene Grayver &lt=
;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayve=
r@aero.org</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
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
<div id=3D"m_-847810175369153456x_m_-3752729570845385827m_66274139063384248=
29Signature">
<div>
<div id=3D"m_-847810175369153456x_m_-3752729570845385827m_66274139063384248=
29divtagdefaultwrapper" dir=3D"ltr" style=3D"color:rgb(0,0,0);font-family:C=
alibri,Arial,Helvetica,sans-serif;font-size:12pt;background-color:rgb(255,2=
55,255)">
<p><span style=3D"color:black;font-family:Arial,sans-serif;font-size:10pt">=
<span id=3D"m_-847810175369153456x_m_-3752729570845385827m_6627413906338424=
829ms-rterangepaste-start"></span><span style=3D"color:rgb(0,0,0);font-fami=
ly:Arial,sans-serif;font-size:13.33px">________________________</span><span=
 id=3D"m_-847810175369153456x_m_-3752729570845385827m_6627413906338424829ms=
-rterangepaste-end"></span><br>
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
<div id=3D"m_-847810175369153456x_m_-3752729570845385827m_66274139063384248=
29appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-847810175369153456x_m_-3752729570845385827m_66274139063384248=
29divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#0=
00000" style=3D"font-size:11pt"><b>From:</b> Brian Padalino &lt;<a href=3D"=
mailto:bpadalino@gmail.com" target=3D"_blank">bpadalino@gmail.com</a>&gt;<b=
r>
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
/media/en/technical-documentation/data-sheets/6406fc.pdf" id=3D"m_-84781017=
5369153456x_m_-3752729570845385827m_6627413906338424829x_m_2936486537833350=
2LPlnk885883" target=3D"_blank">https://www.analog.com/media/en/technical-d=
ocumentation/data-sheets/6406fc.pdf</a>=C2=A0or
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
</div>
</blockquote>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
-- <br>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr" style=3D"font-size:small"><span style=3D"color:rgb(80,0,80=
)">Dr. Robert W McGwier, Ph.D.</span><br style=3D"color:rgb(80,0,80)">
Affiliated=C2=A0<span style=3D"color:rgb(80,0,80)">Faculty, Virginia Tech</=
span></div>
<div dir=3D"ltr" style=3D"font-size:small">Affiliated Faculty, University o=
f Scranton<br style=3D"color:rgb(80,0,80)">
<span style=3D"color:rgb(80,0,80)">Former ARDC Member of Board</span><br st=
yle=3D"color:rgb(80,0,80)">
<span style=3D"color:rgb(80,0,80)">N4HY: ARRL, TAPR, AMSAT, EARC, CSVHFS</s=
pan><br style=3D"color:rgb(80,0,80)">
<span style=3D"color:rgb(80,0,80)">Sky: AAVSO, Sky360, <a href=3D"http://ex=
plorescu.org" target=3D"_blank">
explorescu.org</a>, Skyscrapers</span><br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--000000000000a393d405f7e7bdd3--

--===============4820700862890386394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4820700862890386394==--
