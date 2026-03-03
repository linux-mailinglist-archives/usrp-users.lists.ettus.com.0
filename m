Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMmnN78yp2kjfwAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 03 Mar 2026 20:13:03 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BC01F5BFC
	for <lists+usrp-users@lfdr.de>; Tue, 03 Mar 2026 20:13:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C829D38647F
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2026 14:13:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772565181; bh=7GqmBa7h6MXhblIYrden0V1ATN9U3++IQwi2JFyqFLk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=libdmd5vsdpjBBhk95PVGgtHGC6ldwtOmq5AEvklvvovtNE4X5WBGefGLdgH5oGEq
	 ke/VYsvPlaTW+MgWvEhH7VYpthfBi638jUMvVHhrolL8dgX9h92ooRRQt/ulJ54iCk
	 Ee7ZwkBfN4VnamLXMOmvjKDPpoiP/67TW8s4HzK1nSXinkadgbv7XWPpHJo+f25FSY
	 E4MYneaFcWL7nEXjqSJv2bmV2gGOc0OvTBouxijDaKAukbpq4I+OWdGw1uAtEKb46v
	 PavZaafVRVAI8AGKSJoZ/PFodfZkVYB51vWzRnr8EU4O5XJX/MPL2VqoieB2ZUVoQS
	 GKD9hMOIsyJag==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 3A1E838644C
	for <usrp-users@lists.ettus.com>; Tue,  3 Mar 2026 14:12:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CiEZnLYM";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-65a26c220b6so7628123a12.0
        for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2026 11:12:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772565138; cv=none;
        d=google.com; s=arc-20240605;
        b=lysANMSn4Lqnq5aGYrNGNlSURqIJzC+XTrxYjLpa4sYf58kTTsuwUnIflUDa+fNLQg
         7WM7lZlhvx0u6wW6lTtqhoQe+Y0LLo3iVACmH/Upg9RFtpgdzAUdC40ObK+/+dlbPHbM
         wkH6DMrwphnRbBj51GcBLSpl1q9SAWiEmp4t33Vc7BwBigQnywc1INRu2CrDmIwxPjzt
         QQks/w/cUVRGuItUfSZVAJsTgNQpzWWxfhF/vRGHEvUQ/PSxWBld75XkwPrjG/ot7OYd
         b2Q0crCSmrG+bl8cKYPm7DWvQ5NDlCNS5W6d0nrtMSboryhH9bysIjbuspW8oq+SlYNR
         mThg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=It9Hv9/z+9stHGnJfTEC/vPZ/LHTCH8Zz5R+OkZEABM=;
        fh=H8HwgJph1caNltFILmOxHNp/dA7xFDJSwI9mck8jZPQ=;
        b=RwWyjJ14M9m7VTODSgtctF0iQE0j2vmS2DxY5TS+y/hNptwSfeKjfb5XPXymC2jDc6
         /9Th4h2SNVqeyugEhUAW80JONX0tNiWtQPgOORUmr15YimC73lffZvOoeEhc1Idc43Gb
         7syhdeK4I2Pksz88oOMK2/CUXu22soSEIqvJKbiYhNwXR/vnpytXwfszEyImvcob/eXx
         vATqTMvkDm5AFPbnKfGw7uC0t4Reo+9vNhDsDJANpUvecN793idN+SjRym5D+JJNlLTf
         /MuBw7jJzc99iDSoZVEfw7sQ0+0+1b4ootmwfBc7Dm6BMSX65MifztcoRuT0thOxGMXM
         ILYw==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772565138; x=1773169938; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=It9Hv9/z+9stHGnJfTEC/vPZ/LHTCH8Zz5R+OkZEABM=;
        b=CiEZnLYM4GjOe8L6+2uFlzAWFUfGmAalVowKiUO9tUlNcTV2jEkjEvjvcX/5wP5h48
         OmGQ4Skv9ntPAmRj/qSAKujSKd6eirthX5txxrDFKi0Ton8A6nfKdNZwgTn88CY6/pzp
         qUY5EzC1mHpcEXnR6Cz3pv801yodV7LqLMp+3AD9k/TX9p2D2rUkwSUQ41vrJC8wCdLh
         El0YT7M/Jdy88uQdO5AjlxUvGEPsCnXBI+6DMyooYqu01FZil3thpp3KNZ3aUHJElxQ/
         aVDEH+BD7X/CZo6pXATbejO7b5a18FizRvxvcBg86RPMSv6PAyPqq6WmQ+ZZkOQy8kJu
         BuWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772565138; x=1773169938;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=It9Hv9/z+9stHGnJfTEC/vPZ/LHTCH8Zz5R+OkZEABM=;
        b=sUnOLfVQg8LIUDpaDEBJrIUu54Qv9RD60lBiT3/EUZ3o0ROjr0Lwt59ujRdzXx8Rw9
         zmOTaYvzezgqF/QUKMpnNZr1+gW3H8vgh4HGURpTdaHWJ2MfzJ7DKRO7dsgue9J4x2kp
         MhH9V+FiFw2e9UvIXDmCyU/ZK0IwOwk3uKrV28c5rfOrCa3ipy0x5wXeABGkGwm7GvpM
         kxjuf0qDXPROUg9qzGZf5iWApNf42K6317t65/zj7XkCu6xM6PWSCCfgMgyOTezNKQ39
         F5QKiiaCK8yZj91+f922tE1FAIo6ry4MZOejyZ0uIQLTGHDscZBoS9kC5UnCas4Y99kU
         Jp3g==
X-Gm-Message-State: AOJu0Yx6MjqeXXesSAQi6ljGxWL5Pj8vf7WR7t7BZyYY8K6EJ5sahMML
	/YSAutgJGKGmXrdkitMXfXNlK8hN+2c4joZcpTOQLlU02nr1Y5AtHm4+ypWjQ1KDhhP8wqM6u2L
	W7/4o7Zs5rOrVewsMO04uh8Q9kXze8Z4=
X-Gm-Gg: ATEYQzzhcRUWHRIyEp7IPEnCz5tSOEKW5XNCS14bdfvtT8Bajz8l3QyaXTm5Skg48Ld
	eERWXommljbU5eN9d/iFmkR1CbLkl0MgiqrwR96+CvF+jSkLIaVNX+GlAQHbXeqGWM/NgFbrfw2
	2NWXZH9RcM7gK/1sgRY6NcDDHMX9a8HIK91+9knNzrxoLr4rs14ezToTsKUGFND4CBN71qXduo4
	lhC0hqUb25bTAFoxj1c2mOCrRu/w00eqQNhDyMrgO+G9VVc1DvMzOgT8/YcAz0nrJ17UYGLf1Hy
	GeMzyA==
X-Received: by 2002:a05:6402:5245:b0:65f:872d:ff92 with SMTP id
 4fb4d7f45d1cf-65fdd6e3648mr12103507a12.13.1772565137831; Tue, 03 Mar 2026
 11:12:17 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB912686CBC2CC3BA97673827BEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB912686CBC2CC3BA97673827BEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Tue, 3 Mar 2026 14:12:06 -0500
X-Gm-Features: AaiRm509DMNAS6Czq8-ZAAHVCQm2Awj9ZiNSZ1IZ-jnU3ThFTvuy5KkiWOgWSaY
Message-ID: <CAOEzSFTKfXPCW4DfnHxDSdaDUYxkFswq5+BGmV7FOyckfRRCxA@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: 5EPX2SCRHEGSMLU4TBVFHYETVYMRABMY
X-Message-ID-Hash: 5EPX2SCRHEGSMLU4TBVFHYETVYMRABMY
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440: Could not find appropriate gain for performing ADC self cal
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5EPX2SCRHEGSMLU4TBVFHYETVYMRABMY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1588772197938799414=="
X-Rspamd-Queue-Id: 55BC01F5BFC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[gmail.com:s=20230601];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[c1337rogers@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Action: no action

--===============1588772197938799414==
Content-Type: multipart/alternative; boundary="00000000000061b8d7064c237b2d"

--00000000000061b8d7064c237b2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I also get an issue like this on my X440. When the radio steps through each
channel during calibration, it was consistently failing on channel 2, no
idea why. My workaround was to give it the device args parameter
"cal_ch_list=3D0;1;3;4;5;6;7" and this works. I have not actually seen
evidence on a scope that this channel really isn't working, so there must
be some other internal issue... Fortunately for me, I dont need all
channels so I just dont use channel 2.

On Tue, Mar 3, 2026 at 12:34=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Hi,
>
> I get the following error about every fourth time I start the software.
>
> -------
> Error during initialization of block 0/Radio#0! [ERROR] [RFNOC::GRAPH]
> Caught exception while initializing graph: RuntimeError: Could not find
> appropriate gain for performing ADC self cal Error: RuntimeError: Failure
> to create rfnoc_graph.
> -------
>
> UHD 4.9.0.1
> I see it with either uhd_usrp_probe OR rx_samples_to_file.
>
> NOTE: there may be an actual hardware problem with one of the channels
> (TBD).
>
> Anyone seen this?
>
> Thanks.
>
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000061b8d7064c237b2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I also get an issue like this on my X440. When the radio s=
teps through each channel during calibration, it was consistently failing o=
n channel 2, no idea why. My workaround was to give it the device args para=
meter &quot;cal_ch_list=3D0;1;3;4;5;6;7&quot; and this works. I have not ac=
tually seen evidence on a scope that this channel really isn&#39;t working,=
 so there must be some other internal issue... Fortunately for me, I dont n=
eed all channels so I just dont use channel 2.</div><br><div class=3D"gmail=
_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Mar 3, 2026 at 12:34=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:eugen=
e.grayver@aero.org">eugene.grayver@aero.org</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg697591754714073=
3738">




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
I get the following error about every fourth time I start the software.</di=
v>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
-------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Error during initialization of block 0/Radio#0! [ERROR] [RFNOC::GRAPH] Caug=
ht exception while initializing graph: RuntimeError: Could not find appropr=
iate gain for performing ADC self cal Error: RuntimeError: Failure to creat=
e rfnoc_graph.</div>
<div id=3D"m_6975917547140733738Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
-------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
UHD 4.9.0.1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I see it with either uhd_usrp_probe OR rx_samples_to_file.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
NOTE: there may be an actual hardware problem with one of the channels (TBD=
).</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Anyone seen this?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
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

--00000000000061b8d7064c237b2d--

--===============1588772197938799414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1588772197938799414==--
