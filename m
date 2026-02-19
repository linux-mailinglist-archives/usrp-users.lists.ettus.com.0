Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOEMBMTOlmmooAIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 09:50:12 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C9015D1C8
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 09:50:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E7146385BE4
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 03:50:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771491010; bh=VylqqE415M2k3YtnQS9M9a6JtR2dH4vmaMSs6DmziTg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wJoSlWlvSOF/2LkwvFy0cu1jD+aboTm2YmPF+QhbBkjWpE8niwg7XzJzniaYLVvXA
	 DC4gGj8aU7BMA0iPtkjMO21B2DqCp3WD/JLDyTKSfXXNrU2yKhJ2nOO8VeqfhlfxLV
	 0kA6k9DTyWi6at10AIppBfoi7/RHF34RVbc380/o9xNPW5PrT+wX1GqB8OdwlJKmGR
	 RnxFgAvfbPBio7GL76Mj2r/NPz8QsF6AwgrlWv/fEvPptg8MjsGF0dH87RHcApnJWX
	 QXYJcWkUCYnMSM/WNOJrleQsxSHLt/VhWHUAv3ZW1GcAZQ6eWxnXfU2JV+52EXzjZi
	 qe5Ohl1d8JA5A==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id ADD9138581D
	for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 03:49:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="BZCasoAs";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-8c713a6a6f8so81601985a.0
        for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 00:49:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771490973; cv=none;
        d=google.com; s=arc-20240605;
        b=kD2y2uBJgYrt/Ky2z/zEJ+7FJMX58IthqolNDw8wb7QNKklGXkbNhB/77Vkq9iidYx
         Y15nX4EquFqWLdPbpWri51K6SPKlxmgqhI1/QJoQZ8EacnUM3vGVMZPi2WF6borIPWlv
         mf1zd/hmy1R+217Q2uA/O8A769cK/tyC5OKRyOwfLkDk8FvHirF3oN29Jz+IAOR3CrHs
         NLeB7buqQ+OcGp/fjXw/HRbE8fcPdAfqx+wTlkfUsL6sR925Dwou9LXf9A/FTH6yAOrB
         KZs9BXjNiyO9LLXwX8kOCPqLuToZfPBYPUFDpk9uhM0lt1huCeCvrV7VIcRcJSZZrs8C
         07WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pknhy1e+W5Y3KkWxjdB5pW1DMKXTVskmiBTllEIYrbE=;
        fh=D67UKKvDv6+BiF4rWYwO/H7cOPlfuj7ceB5tGXdKGws=;
        b=bIm0tN/0B7GqYgCzWfDODB2lMwLsJTQl+ag0O/mwD55PUKaZ+Hm1b9RVDNfIA/e8Md
         GwLmMN9wJXBIB3Lh1Gk7wXggDkiwNfSPhdjkz0ITgUyQRjaaZS0pHL527zzW7Wr1EeK9
         eHugh5QANg5xMsX7JCIr4sCbNARQqAGvzFd+WAr2tfi/s66f/RChiQLMXqdGp5Hio4pD
         qtIWgVhf14GVdzCiGbYyyfhNUKOhvUVQbphUn6ZT/x0Pepe5bvL+5llET0cKUBDap/kM
         rvo1JiI9TSYOxXj7+4SiVMQyl35TgadPvI6Vo8Wk7BJrPbSibsw4BI/Qg27ccIQHSUCx
         OXuQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1771490973; x=1772095773; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pknhy1e+W5Y3KkWxjdB5pW1DMKXTVskmiBTllEIYrbE=;
        b=BZCasoAsPPRxAYSKw56ntXNrNf+dqu4xYTQsPhF0BlTBuUn+YsUpXbQEdbPX8dwEjj
         rWkjhoZdMprK6NCSQKdNtRlWN9ByCqtod9Ba2sSHeoUQ+nnioiAjdaUq7XTpGCJ4rRR9
         obym31YJnH/7yntpGilDbR5HmaQ1f6MC1P2FwTXCYoj20jAhC/v8X89KELqRlEsjKpVL
         TiNapy4QqUiA9v66NWhX7PXoWyBMk33y+FHDn6Eh9DCHfE6r2gqquRj8ZnbAYvC+8giI
         9gG/OKzCSvVoAkAmMN56zx16XA4rTp8q2yINBZ41TZKsG+qmS9537CyB4yFJUGi9mvck
         AOTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771490973; x=1772095773;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pknhy1e+W5Y3KkWxjdB5pW1DMKXTVskmiBTllEIYrbE=;
        b=N6bvEurjLOQcxSe/2ZmJ0LRAfKruPaKl5K7aRejG/MQMupej05Crz1framHoytwQfG
         za+FNeRMIeBD/NADEK2+mDaCddGSdaMudFfOl2abIlN+6XejPBJyTBg80BOjqsjeQL2z
         VuUtmBPy73EUnzSysP8HbDbQi2J9Cg6mecog+rs+4wonw53DVNI5JghW9k4NPaIVDuxz
         rJYEqfvj+9jeVcTPxG2cVmzvun0gInI6wDxQdtjR82IqLpsa9+kumQcf2jzUpWucRosI
         oLFgtOGHAPGR1cB+4VmxfxGvui6rh5jqWosNEtxMNPR+DxbMrOpZoKJQtWBMQbb/6KDC
         gaSQ==
X-Gm-Message-State: AOJu0Yx+9mhK/j7Yhd9/sXqa7tl2SxeD8oHsyl/U69ZMH3rLNJAp+d0J
	CFcqfi/nxp1gg+BkE7Q8LOTCOxaDnRn3C9NoPtIrLqeERtAyhIBRHk7Id3+G62F7W2ARAPn8ged
	RQaioqjM9T55PtzsaBo0hmiHeJ/e/4vhufJKCXZbGLJJC+nVqAWJY2h9kDw==
X-Gm-Gg: AZuq6aIvzE3Y7yFuumuLl4WX2UXaiOibk0qxuDWSfCJXLRF3V7CLmYY/99Qay6CIpUa
	JsQ6Lpo++oIGGCuhsGKMo+p/1zZ5LDPP83asieKT4YZfjAWZ4eCij0+cSPfk+Os2VAoIt1XVm64
	dzxYJqCw6EHM6aetfAOaZO/DiW8Shjx8vdTtM9WiMXfft/WM5MBJbDEw8EnY3+XA0BDMEhrFz9a
	/G8mCJtUmFNGmyA1eooUkCq/Ry2tRGli1gbEBziK75+0M5kaYHQ9E3bIDoEj2PSVEArQLyKgz9l
	KjCDHxPGQ7SxROvVrQ9ONj4wxopFU2UgEmlYGg==
X-Received: by 2002:a05:620a:2a0b:b0:8cb:1e3c:96fa with SMTP id
 af79cd13be357-8cb7be5dc30mr99447185a.11.1771490972978; Thu, 19 Feb 2026
 00:49:32 -0800 (PST)
MIME-Version: 1.0
References: <CAE_Rk56j50WBbXViEyE7A2DDny17g0XkFfp+=M=bbYWh5ywU+g@mail.gmail.com>
 <CAE_Rk540uFo9aojLwrkxpLzowHGr_YUY3UyzxH1aTMaSezCsFA@mail.gmail.com>
In-Reply-To: <CAE_Rk540uFo9aojLwrkxpLzowHGr_YUY3UyzxH1aTMaSezCsFA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 19 Feb 2026 09:49:21 +0100
X-Gm-Features: AaiRm52zipZ_alogA9ia5n36qc92q4lSmhHgYIYshZ-E_8jTqSK1S5UyEjf9oFY
Message-ID: <CAFOi1A7Jm3NMr-ZO3Yun-6Rxt_Z9_=N_eR1H-P+7usO=yyrY+w@mail.gmail.com>
To: Daniel Ozer <danielozer22@gmail.com>
Message-ID-Hash: Y24HPIJWYEQMAQR3KXED6K3YSYTN5INZ
X-Message-ID-Hash: Y24HPIJWYEQMAQR3KXED6K3YSYTN5INZ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: error when loading a bitfile with more than 8 eps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y24HPIJWYEQMAQR3KXED6K3YSYTN5INZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8888295824570407464=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.969];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ettus.com:email,emwd.com:dkim,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: 95C9015D1C8
X-Rspamd-Action: no action

--===============8888295824570407464==
Content-Type: multipart/alternative; boundary="0000000000002adfb8064b2962dd"

--0000000000002adfb8064b2962dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Daniel,

thanks, this could be a bug. Can you please post this issue and your YAML
file to github.com/EttusResearch/uhd/issues?

Many thanks
--M

On Thu, Feb 5, 2026 at 9:56=E2=80=AFAM Daniel Ozer <danielozer22@gmail.com>=
 wrote:

> it seems that the problem is when I use more than 8 eps.
> but i don't find any limitation on this.
>
> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=
=D7=B3, 28 =D7=91=D7=99=D7=A0=D7=95=D7=B3 2026 =D7=91-10:34 =D7=9E=D7=90=D7=
=AA =E2=80=AADaniel Ozer=E2=80=AC=E2=80=8F <=E2=80=AA
> danielozer22@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>
>> Hello everyone,
>> I need to create a bitfile for the X440 usrp (based on the X4_200
>> variant, with uhd 4.9.0.0) which takes each rx port split it 2^n ports,
>> each port go to a ddc then to the eps.
>> While i managed to accomplish it when the number of the eps is
>> equal/lower than 8, each time when there is more than 8 eps i successful=
ly
>> passed the creation of the bitfile but when trying to load (using the
>> uhd_image_loader) it on the usrp i get the following error at the end:
>>
>> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
>> RfnocError: Specified destination address is unreachable: 1:0
>> Error: RuntimeError: Failure to create rfnoc_graph
>>
>> I tried many variation (see the attached yml) -which include adding to
>> all eps True on the CTRL option, i tried to use only 2 eps with 8 in_por=
ts
>> and more.
>>
>> What may cause the problem?
>> it seems in the documation there is no limit for the number of the eps
>> (or ddc,splitter) as long as I managed to implement it successfully on t=
he
>> fpga.
>>
>> thank you all in advance.
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002adfb8064b2962dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Daniel,</div><div><br></div><div>thanks, this cou=
ld be a bug. Can you please post this issue and your YAML file to <a href=
=3D"http://github.com/EttusResearch/uhd/issues">github.com/EttusResearch/uh=
d/issues</a>?</div><div><br></div><div>Many thanks</div><div>--M</div></div=
><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Thu, Feb 5, 2026 at 9:56=E2=80=AFAM Daniel Ozer &lt;<a =
href=3D"mailto:danielozer22@gmail.com">danielozer22@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rt=
l"><div dir=3D"ltr">it seems that the problem is when I use more than 8 eps=
.</div><div dir=3D"ltr">but i don&#39;t=C2=A0find any limitation=C2=A0on th=
is.</div></div><br><div class=3D"gmail_quote"><div dir=3D"rtl" class=3D"gma=
il_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =
=D7=93=D7=B3, 28 =D7=91=D7=99=D7=A0=D7=95=D7=B3 2026 =D7=91-10:34 =D7=9E=D7=
=90=D7=AA =E2=80=AADaniel Ozer=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a href=3D"ma=
ilto:danielozer22@gmail.com" target=3D"_blank">danielozer22@gmail.com</a>=
=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"rtl"><div dir=3D"ltr">Hello everyone,</div><di=
v dir=3D"ltr">I need to create a bitfile for the X440 usrp (based on the X4=
_200 variant, with uhd 4.9.0.0) which takes each rx port split it 2^n ports=
, each port go to a ddc then to the eps.</div><div dir=3D"ltr">While i mana=
ged to accomplish it when the number of the eps is equal/lower than 8, each=
 time when there is more than 8 eps i successfully passed the creation of t=
he bitfile but when trying to load (using the uhd_image_loader) it on the u=
srp i get the following error at the end:<br><br></div><div dir=3D"ltr">[ER=
ROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocError: =
Specified destination address is unreachable: 1:0<br>Error: RuntimeError: F=
ailure to create rfnoc_graph<br>=C2=A0</div><div dir=3D"ltr">I tried many v=
ariation (see the attached yml) -which include adding to all eps True on th=
e CTRL option, i tried to use only=C2=A02 eps with 8 in_ports and more.</di=
v><div dir=3D"ltr"><br></div><div dir=3D"ltr">What=C2=A0may cause the probl=
em?<br>it seems in the=C2=A0documation there is no limit for the number of =
the eps (or ddc,splitter) as long as I managed to implement=C2=A0it success=
fully on the fpga.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">thank y=
ou all in=C2=A0advance.</div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002adfb8064b2962dd--

--===============8888295824570407464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8888295824570407464==--
