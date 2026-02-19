Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id xawvFOf9lmmItQIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 13:11:19 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B2B15E7F7
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 13:11:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 290853853DC
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 07:11:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771503077; bh=3uWoL72XYYON64/gIzyn4HvrbjpwpTA1ko4fudxUWaw=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wgOmtQol6XTA/aDc1KOxyZdD52OweB3Qfk6RewYO0XT3uSKbS4S6l4ftoUqHeVP+P
	 yN6Ty7nfI0ZXnrRDq5yM4TjC6/mWoKri2KBJhxdhagMGz9m1DWg2pxAw8Czh/15rsk
	 6MIwy37utilCijrlyUfQ8keQ5VyD+xnJkyoObpaeLl9ANzEnhNQOlcnwygvF3rGRHS
	 LBb0g9F5feaMGevYvXUbxCEYDUk3jgftvrqOw1p+iU9KxjorO/ToXbEphO4+qcgiEm
	 Hnzf7cWobQhI2kCy/nUEoZjFk7yLGyAz0w4cTvDhnUgqIZ+yfX6qufbkFe7b3O5fu9
	 c3irhnS1+ZnAA==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 7AB01384E77
	for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 07:10:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Plm1wuI8";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8cb5c9ba82bso135823685a.2
        for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 04:10:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771503051; cv=none;
        d=google.com; s=arc-20240605;
        b=UHASJpG0QxxGl94Ba4Rzj7abJmLLUBgldf5EPKhQab2ICrJQdrD43C+rGPrWXl+c1O
         GhPgDXDwKakp4dZKAL0bqX+uXL8KDJGwnbi1bI6U/CreHZjSNV7nbDPV6PmSlYolyszz
         4IpyIlBbFBegztoRLOeGhs+qaFJqp7kWfgPnjm3Vu0n/Voen2mCsxyFKnAyNpmVkzEHs
         ztET8SsSrYOFAHiFKe/lsUVTwDDwh+x1Dyzp/QoUunAeVpr5+B7bbph8ovjRfGZ024Sy
         vr5jVk11Xx3yclntwUoAGuAPkBzbhy6Vwgokrp/lycaNHgxNEJO4ftZIuUUHn/MJRvGN
         uEGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=YIsFUAlXPtPYEXSfWOXd4Dfhl1VQDiYFwJw4Rb46aww=;
        fh=coLTCVRQ3oJxudDSCc+F10d+hsWal9fApncbsOLe8mQ=;
        b=dBfhjXlbRtqo7pbTxYxwpu8XuVSq9Pien32YGsE3TGhxtZFE/ETPhf9uzuu26A4b8F
         WEe2UxnYxcirS6ENO9OBCP58cJKESPqIPqGSfnRy+UPWCUB1i073phKL+P0qeGC13EYk
         NzNTKXLL/JIuZvgxAe6iyvT4JrQv5JmeTzGu1HXUZ2KZSa7/kRVfv9h9CEqzdPe9EkAJ
         rc8M4AXHo7GfNljUfp0s3e+aIL5B37hDHdAQWVNJYJlOSe7NwsDRgS1rKHgFApoYNHLR
         LVQmz58vWIPdlMLt+nlivBMWWBi84y1QBtJpwrltI3EyGzg8CvLeaX7GPnn5fpY/FdLo
         rX5A==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1771503051; x=1772107851; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YIsFUAlXPtPYEXSfWOXd4Dfhl1VQDiYFwJw4Rb46aww=;
        b=Plm1wuI87NZf8cDVwwEt6xGTYwjM6TrOM64qEdxMgafxq8Y38KEFFPan77b93s3p9B
         pU/vFbf/XNA/LWvYHVCUiUb8xwOAf6YERDIKSgDA8fVTlCC1nzitfMJQ0/3YGSYpRSh1
         36b4rUjmIeVSiz/C1+BtDxZMiAU9jiOynJ6pAAuMZRqObgTkyj/X/flmwgKec7MRA6Z4
         Sguz9sA5Ppb7eJK2W//kTEdkib2f7IuKB9jcT4snUNbolQt1BT+ToX0r7lM5MstDD/XI
         WIgFuuhrf91IRZizHaGIq5UBicIhzaWpAAstgVSzwwnUXmOKeTWc/TI86X50ncYEOh13
         qChw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771503051; x=1772107851;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YIsFUAlXPtPYEXSfWOXd4Dfhl1VQDiYFwJw4Rb46aww=;
        b=lpMPmR2sJRfLCoU5KbN3+s/6o2Hf/i/poxN0SURd/v+QRVm+ULxLPa7WE/o5/pzjQv
         1qLuW6ZxTFwG/4kmZztSdBgoQh1gUHQCLHw8u1jTW9peboUvNX9h5cGNqzX0By5pTvb/
         gIpdH9+9M9gOI+stsCUory0Wyg0k8GNaSpJkf/t9Wq4cg9H7bJo2xLWx+dKsRefr820C
         pGfjEoiXEGgS6UBumO1GJ6J0M3DmMjmy31KIQrelWe1CzCgHwtDIQDkPVtUTcXrV0m/l
         hrZf6sCrPrtjYuxs7pJmDTRrCOFMp7p8CDCsVKwIrBwzbADvb6Oeg4ljTOJ7wiFYq/Je
         bKwg==
X-Gm-Message-State: AOJu0YxP8Z7CVqb4Dh6mwOzsK0Ul6f/lJSfuU8tmyJPF32wzsCDvITxX
	Pc/lzSsu9P9vMxwmc19xCdDzzrh3CLGYqQyrDG59RX29l5n/vnBDmOyKCI+dmIkyqFgI6A8KNKk
	0YppAyavKp5+Kds7TVa3f6i1NTHVMcU85p05dQ2adbMDiMpv0mKOwT3abSQ==
X-Gm-Gg: AZuq6aKUNQTj1TRiyDCR98fM8aAt9jGyk5AzvtPFm0NbWkQ3wbfe6jQFlGi/Xj/uXSU
	5IuFTYp79vJ+Jq/lPVOgvAoY6a6xlsf+yqnPxVGqrMASjgbfzfNYI5wY3LmyUBc4vODs64M3FAi
	JKluu/KCPy/K/bY/Kr6pHZZ1Q2JPkK2aZianc9rY1QypLCTtHi6F6gMLkHnwQVl5Ro1uokDZILV
	UMW5s77hQqduN107RXLjGDOhXaLiCGDqLxmcKwIkaEUH1WulJs8UfTEgdRm3VGtROQGVRykOJ4N
	O0JCM1fzYQd4W5No0eoaj7WuVzGoWvSJ/wY+6w==
X-Received: by 2002:a05:620a:1a9e:b0:8ca:d5cb:683e with SMTP id
 af79cd13be357-8cb4c025d13mr1990848585a.75.1771503050674; Thu, 19 Feb 2026
 04:10:50 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB912622C7566AE804EB53B2D0EC98A@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB912622C7566AE804EB53B2D0EC98A@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 19 Feb 2026 13:10:39 +0100
X-Gm-Features: AaiRm53iZRVQ1L7SzVN9MFIYUw9TwIvidye1iRE0pIu9wG9jHoKFJTWx_mE5VwQ
Message-ID: <CAFOi1A4JT_iyhA47Egg0CqLDrCEyd8yBXzsBb9P6DzfMD0=Byw@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 3SRJ7FXKG7PKUTDPKOOGIT2SF74FSD45
X-Message-ID-Hash: 3SRJ7FXKG7PKUTDPKOOGIT2SF74FSD45
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Dual DDC per channel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3SRJ7FXKG7PKUTDPKOOGIT2SF74FSD45/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8470728899889856195=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[ettus.com];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,aero.org:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: A4B2B15E7F7
X-Rspamd-Action: no action

--===============8470728899889856195==
Content-Type: multipart/alternative; boundary="0000000000000dfe02064b2c32c2"

--0000000000000dfe02064b2c32c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

HI Eugene,

like Rob said, you would need to run the converters at 500 Msps, and then
decimate down from there, which requires a super-sample capable DDC block.
Such a block does not exist for RFNoC, at least not right now. The bigger
issue is that the 500 Msps images are built for only two channels total
(the 8-channel images top out at 250 Msps). Bottom line is, I think this is
stretching the capabilities of X440 a bit too far.

You could try building an X4_200 image with 16 DDCs (make sure you reduce
the number of halfbands to 1, and the max CIC depth to 5 to match your 500
-> 50 resampling requirement). Does that even fit onto the FPGA? If there
should be any chance of making it work, this would have to fit with
resources to spare.

--M


On Wed, Feb 4, 2026 at 8:57=E2=80=AFPM Eugene Grayver <eugene.grayver@aero.=
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

--0000000000000dfe02064b2c32c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>HI Eugene,</div><div><br></div><div>like Rob said, yo=
u would need to run the converters at 500 Msps, and then decimate down from=
 there, which requires a super-sample capable DDC block. Such a block does =
not exist for RFNoC, at least not right now. The bigger issue is that the 5=
00 Msps images are built for only two channels total (the 8-channel images =
top out at 250 Msps). Bottom line is, I think this is stretching the capabi=
lities of X440 a bit too far.</div><div><br></div><div>You could try buildi=
ng an X4_200 image with 16 DDCs (make sure you reduce the number of halfban=
ds to 1, and the max CIC depth to 5 to match your 500 -&gt; 50 resampling r=
equirement). Does that even fit onto the FPGA? If there should be any chanc=
e of making it work, this would have to fit with resources to spare.</div><=
div><br></div><div>--M</div></div><div dir=3D"ltr"><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 4, 2026 =
at 8:57=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero=
.org" target=3D"_blank">eugene.grayver@aero.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div>




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
<div id=3D"m_-4035741367840544307m_-2490841620321741595Signature">
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
</div></blockquote></div>

--0000000000000dfe02064b2c32c2--

--===============8470728899889856195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8470728899889856195==--
