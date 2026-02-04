Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GfTBjOtg2lvsgMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 04 Feb 2026 21:33:55 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 476ADEC7C9
	for <lists+usrp-users@lfdr.de>; Wed, 04 Feb 2026 21:33:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2BD03865C3
	for <lists+usrp-users@lfdr.de>; Wed,  4 Feb 2026 15:33:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1770237232; bh=TZ3B43jkTsvma69oxbBP51LyLpf6Uavp0JieiSryNW0=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=WiP7WRgk2QGFCrFFUdiJqPn2NoIagE7hDR+9EF3e8WWMlLWmzddCze5Zy8PiNtQHW
	 i3XbYVvfyW1TlMY9CBNoBj8Am3vR4h3zw5z/EH3+p+jYTrdEYmsKW/RRAEg1UsFniv
	 X1VfjTkxa5g0YsT7dwrv7Lc5T4+7TjkEJ00FOnuYdnSGQxjoJxHi69WkRyrlQRXeT6
	 NuW9YYV3x3sMPhN9g/poAkg4+FSJZfMHn1E1c9sEvzkEchinUlXO3bO2LfL0hcYfTJ
	 RH9SKBsXoNU7odEiqhzoN8UINsK2p7L4HtQTPDolQ8M9JhPdZb8HRAuduApQxZcLLY
	 ok71nDzck44+w==
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	by mm2.emwd.com (Postfix) with ESMTPS id D752138659C
	for <usrp-users@lists.ettus.com>; Wed,  4 Feb 2026 15:32:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="c6etS8Cp";
	dkim-atps=neutral
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-649e456e8a2so365560d50.0
        for <usrp-users@lists.ettus.com>; Wed, 04 Feb 2026 12:32:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770237162; cv=none;
        d=google.com; s=arc-20240605;
        b=F32mRZxqFw++Pqk30I9oBGGkdotjmtDNGrwTSDxW8Ec0fY3zvVO1GUAl2jK6FqBede
         ZZH9/cn6/2lrP+xWz8lUVpSPCvtjW/Rstsf5H6bKbxTIpUM8svEntneFN/nHbwC/3T2j
         2tOHLolQAW1oaAlPZDz3xhhsRto1/oxLE9C3+QhF/TPmPZ6jTtRKCYb0PrIPYk5N/0VA
         96IJ1Jy68Bk5FW+aepxJitmmgnZmtniJjK8MjAcOelhopIimomSI5B4cmnKZeZ+EV42N
         +Aj/g9+XyjzCP6YmGDwstW3Hv0v9nI5/PpEwftLaTWo38kCUY1o0Xn9WCEUsSn2g8NIZ
         ZXqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zXsgFKpxPJ1KLuIfqC/2p2DyfpNGF/Ok3gpASbkobdM=;
        fh=H8HwgJph1caNltFILmOxHNp/dA7xFDJSwI9mck8jZPQ=;
        b=Q0vb+yElrGDHQLQ8mF3tKehP1i2LalHzUX29q9t5Fo7y+IKP/9jaoPZgtmN/oCWXXg
         J4dl5t25vOx8FmgnK+G/mXb+4EKMRmiR3oXsdt40tTjJY4omfiD2Nkwro6WIXE8csMUf
         A3JcIcZrI/7X1nKyPzOhMp4b/pZ2GzB/ciMAOFNwbTaK2siFPi1/5vW+1TPxKVFhZzxn
         aPwl7dLlXcjdBVU7Gysq1SozcX4Iy71NCnWOIAB3Yf58PnAWMiY69wcrSam4deb2Ev2d
         M1dCq5gdiLLFmVv1AAsth0+OVs328yvX4bxjdQp7HkZbeLSVdzCa2tG+GXwcHaTOKA72
         YmPA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1770237162; x=1770841962; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zXsgFKpxPJ1KLuIfqC/2p2DyfpNGF/Ok3gpASbkobdM=;
        b=c6etS8CpTq4xDrVxPVh3wiu+dfHjpgpbM70If5/ZdLWtIyaLOPJZI0Wp2YsKAgXDUC
         pfWlGSczbrYpM2Nq5egBeVCJE/pVISYMtvZmvz+QhiqvL6/ZWyrT1/1+4OUA1iRDlX/P
         3OeY3IQfnQO83obLsgXwsQzFtjyJulC2WLpvjffkULCQJ43SYyQv7fw9ZedYvsaV+hEg
         bqPM3ucwl6v8xZDW6lAbrL8Fv9hsIuUMGcxCP5cqtQ87Z7FEy7s2Arj9Za1yQdz6wq4V
         gtyJFSN0whP+tEDLlr+0lD2UXib8GGX1Ofv8deiv4aHVvhpPKwg54oNf7Nk0/As4ZvE7
         KZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770237162; x=1770841962;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zXsgFKpxPJ1KLuIfqC/2p2DyfpNGF/Ok3gpASbkobdM=;
        b=F+MAI1deTOSrGUuAtiD19kaKPkNZZFVl1PFygwRWPxtUGKgVIBJ4M9NJ+rFzWsEzNG
         mpsWMY4eWRNoEBnhq1/081Mh8ppS+zoD4NJVREAPkFYQcfVasErqEeL6jRjK99Q3ygJL
         cTnxM0RFy4S5yzuKC+GqtBL430+IIjFyoBsMdQMAQzHGSL2PpQzMnBK+k/Dgbj/sn3QL
         9EXV+NxsJPHz1eozHusMv640KR1pdeYg8dYMiTHB1Wen86r8/U3z0rKLEiI64RvT9oG1
         Zl5sFp6D4ilI4znL0c9a9bJ80NDZ6zvPzKle72jG4q6Cx7IzfYnYWfnnsFhsc007TTc3
         EV5w==
X-Gm-Message-State: AOJu0YxdKvE4l+NchFn+QwKRS+000AgxBYho17b2F52HFROj53J4Chfq
	GYJRrQMmfLa7KUdiL2HrYQUxKrz6Dg7Ezf4/mGb1Sm3uKFny28OEpIDgExgUueGXJ2ia536IdOg
	unPbLng9C0WmuRAY1vecdUK6lm7maprE9D7LT1Xv+
X-Gm-Gg: AZuq6aKOQqJ30Nq47w164umDW9Jg7ovdJtXrYS7UwqWSSR82OsmMzARs7IMu/KmcUSB
	J7hdfLhAWAMTPm++3k7nUaNjXHQozVpDf31eI6tYUK64FH5WAwlZuBoyF9naEzOyYAS4F2iyWOZ
	vi8tXgjrtrmrZoUKqT/JBqsbVySgHv8ACvPSg6boSRh9yKP7lF43LvLtSRQyMtsmTN3oePpcE3P
	3koxTHNMs9HDxoZOA3UvfIPGcn7sog7jt18jeJ/shNNkDSw+T8rnu4Cy2gmYXPfpPCbv+UvcHzf
	ftwjzXYB5ImikQY5iEz9DIDhUas=
X-Received: by 2002:a05:690c:25c1:b0:795:fb7:6f1b with SMTP id
 00721157ae682-7950fb77010mr29675577b3.12.1770237162027; Wed, 04 Feb 2026
 12:32:42 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB912622C7566AE804EB53B2D0EC98A@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB912622C7566AE804EB53B2D0EC98A@SJ0PR09MB9126.namprd09.prod.outlook.com>
Date: Wed, 4 Feb 2026 15:32:31 -0500
X-Gm-Features: AZwV_Qhmi_NeP6QJwgiFRdsakU-1-Jpbpn5idFYGkwnTnIf09RlNz8OEOD297AI
Message-ID: <CAB__hTREZ2GjYqbCuzWVCtQBruUdvqKTcU6fL-RJcxRLRRC7Xw@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: E3PBVGOH26VROEFUBMBIQRIVQOYRWNKC
X-Message-ID-Hash: E3PBVGOH26VROEFUBMBIQRIVQOYRWNKC
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Dual DDC per channel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E3PBVGOH26VROEFUBMBIQRIVQOYRWNKC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1671501090136776600=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rkossler@nd.edu];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ettus.com:email,aero.org:email,mm2.emwd.com:helo,mm2.emwd.com:rdns,emwd.com:dkim]
X-Rspamd-Queue-Id: 476ADEC7C9
X-Rspamd-Action: no action

--===============1671501090136776600==
Content-Type: multipart/alternative; boundary="0000000000003620bc064a057577"

--0000000000003620bc064a057577
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Eugene,
Your question is pretty similar to a recent post "X440 X4_400 with DDC not
working".  It seems that the DDC has a maximum clock rate that is smaller
than needed in order to handle a high sample rate (e.g., 500 MS/s) coming
from the radio.  The latter is needed to capture the full RF bandwidth that
you need to include both L1 and L2. Take a look at that other post to see
if anything is helpful.  There may not be an easy answer....
Rob

On Wed, Feb 4, 2026 at 2:57=E2=80=AFPM Eugene Grayver <eugene.grayver@aero.=
org>
wrote:

> Hi,
>
> I may be getting greedy but ...
>
> I want to record GPS signal with separate streams for L1 (at 1.6 GHz)  an=
d
> L2 (at 1.2 GHz)  Each signal is about 50 MHz wide by itself, but getting
> both would require ~400 Msps.
>
> I need all 8 channels of the X440.
>
> Ideally, I would use the 200 MHz variant with **two** DDCs per channel.
> One DDC for L1 and one for L2.  That way the total sample rate would be
> only 100 Msps (vs. 400).
>
>
>    - Would UHD support that?
>    - I assume it's a custom RFNoC build
>
>
> Any suggestions on how to set that up?  Would 16 streams even work?
>
> Thanks
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003620bc064a057577
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Eugene,<div>Your question is pret=
ty similar to a recent post &quot;X440 X4_400 with DDC not working&quot;.=
=C2=A0 It seems that the DDC has a maximum clock rate that is smaller than =
needed in order to handle a high sample rate (e.g., 500 MS/s) coming from t=
he radio.=C2=A0 The latter is needed to capture the full RF bandwidth that =
you need to include both L1 and L2. Take a look at that other post to see i=
f anything is helpful.=C2=A0 There may not be an easy answer....</div><div>=
Rob</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div di=
r=3D"ltr" class=3D"gmail_attr">On Wed, Feb 4, 2026 at 2:57=E2=80=AFPM Eugen=
e Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aer=
o.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div class=3D"msg8552167200434943762">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I may be getting greedy but ...</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I want to record GPS signal with separate streams for L1 (at 1.6 GHz)=C2=A0=
 and L2 (at 1.2 GHz)=C2=A0 Each signal is about 50 MHz wide by itself, but =
getting both would require ~400 Msps.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I need all 8 channels of the X440.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Ideally, I would use the 200 MHz variant with **two** DDCs per channel.=C2=
=A0 One DDC for L1 and one for L2.=C2=A0 That way the total sample rate wou=
ld be only 100 Msps (vs. 400).</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Would UHD support that?=C2=A0=C2=A0</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">I assume it&#39;s a custom RFNoC build</div>
</li></ul>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Any suggestions on how to set that up?=C2=A0 Would 16 streams even work?</d=
iv>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks</div>
<div id=3D"m_8552167200434943762Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--0000000000003620bc064a057577--

--===============1671501090136776600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1671501090136776600==--
