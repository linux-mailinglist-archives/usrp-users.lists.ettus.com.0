Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D94AC21DC
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 13:17:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E13E5385103
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 07:17:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747999055; bh=Kf55DzEs4mpfuTMelZze3xsXz6KOH4JuSylYi4XuP88=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PnjbnvdrmZR2qVphTE3Af8TWnS3+eaOULNJ6YhPb0jLfXmnlVeUtsxHjokKdaYK3Y
	 6g9cgiF9onvqTdLJDS5FpLP28+eaI1uQtIU/OmpPqEsTgm9O9s4NwVK8mCS/iEe1TR
	 QHey2UsqUI+L5S0dFxZmGhrLXQicevRGSrDfJkn+ZIbWCdViXMPduyF5n+SSzWZXG3
	 HdS7JNUvESaGwZEUDprRqzOqxyfDauR9ilD1Lkz5b/z15n0ykQz4YrgbutfS9Can30
	 ip1iDz6DmgWaejgb2B4dpeE0sWFwxVMSCvf8vMkTIx68ft2gVPk9NGzTZ0ixEAKmiY
	 vgw5tIvnqT8DA==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id B4953380B5F
	for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 07:17:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="i232Qo7h";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ad564b7aea9so160685166b.1
        for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 04:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1747999019; x=1748603819; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WdNBgCbpm98wqUNXJNJ4Tb9rpCkuuC5V2BPKz68Zu5Q=;
        b=i232Qo7hU4GVssVikbiruOGX/Txl3YXmz2wAvvgo59jSt8WdvwYRiavI0Yt2/WANw3
         KSzbliSf2ELWX3Ph+4O3sGxKzjd8ZSoJdfbSfiHhPtF4ajXyJnzRU6v7/4E+APkiNlZL
         rWm/Y7ubwskvJPbNRDTWXcc04GK1KiGyS/xJTJipo2EpNk+xZpI1cv9NERVEdi163Cz2
         i4GtjF98n9E86DI92KebS2FEqWrSjHmHjfeqznqBCFhLJyWzMCBE7e7vm/VIY5AyZgIQ
         JVtXiZyUiMDZuvB7u4BRx+KDidd5P2rnekvF0SpGY9PXJng4lmpP2bLBUr9dpeDCishX
         Yj8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747999019; x=1748603819;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WdNBgCbpm98wqUNXJNJ4Tb9rpCkuuC5V2BPKz68Zu5Q=;
        b=QfQMwfIs0nTm6Hm5DKcvyOEulGJms3HfqYWJdfVrOmWTo7ghDV/5sMIkOvCmy/bvDy
         9LYZJR7OmlV73a9MN7xDfTE6ZB7jnF6eOocK5LLbscAwcvnzPYw3o7p67jPBKx1fO+Ht
         qByKM6RkSRKtuH3Ffb9hUNVsmYKwZ4APojgdR7mnJzjHdUor/RGwyXVyLT5LOIR/hQT0
         KW0BRym+PIabnHIjJs7adoO3K1EojvcK++91Lcs4pTnsgkgGBfzq1NqyfURgv0t8Pkly
         KO0Kc9MEBRAi0Fs0z+SHxGOxVmFZZ671yptTkKmcOgHC3zs9QnF+ZchRAujllPAa+zzF
         XPIw==
X-Gm-Message-State: AOJu0YyoJsYHmcScSpTSM2bgR47TiG/2yx+JzxWVUW4YG1qvYHDRdqNI
	XsHyVWBuA12vm9J6cP0pLlMEBJ3bgPh7KO9qrHQn/2VzL7UH+mPPj5R/WUxQErzaEUqZVzo0GfY
	V9Iewh8P8/j3y/XXI8uw4BUNfUvwVjYMf8S1YgJdPgTn60QmNCEk+b6bp8g==
X-Gm-Gg: ASbGncvYzNNHQV98i+sHBY96DIzOMWV55GCKKXTqf8OQed8BmA3TdRpbWD5a6h11eEP
	1KMx6v+EzzmZcekFCoATu1H3+vbpqzdSeKA3nBNxCVz72XevX2cqrKoJGpsHa5rmdPDAdplGrm+
	a/3E4j9ao9iEf6LaGoS1ijbMsGUuBY0QLsez/pVcTr9obLqUqKmgLO5xv1Ddp/6vuz
X-Google-Smtp-Source: AGHT+IF627syxpB4dnKe6OldR3Si8aeldPt7r02FOugjGihjya4hu8R8jWxx8piSmLHLLdhuUhmNJ1wOAmY8sQg2UUg=
X-Received: by 2002:a17:906:36d8:b0:ad6:9ea5:ef36 with SMTP id
 a640c23a62f3a-ad69ea5f114mr194887666b.28.1747999019269; Fri, 23 May 2025
 04:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <06fc5d04db3c4177904569150e0e304f@vastech.co.za>
 <CAB__hTSsONuCyQnpOMbSviitzzquiCP-r1evSbYg14cA1kLE-g@mail.gmail.com>
 <CAFOi1A7-TjVcBPKPijcXEk4hUzgix7VNQp+yCYg3r_myOWw6ug@mail.gmail.com> <30cbe3e83ca7428a9539c30cdc2044d7@vastech.co.za>
In-Reply-To: <30cbe3e83ca7428a9539c30cdc2044d7@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 23 May 2025 13:16:48 +0200
X-Gm-Features: AX0GCFtNvlB_8J4m7AZ29hm5bdxKKpzCoryRahT-RBJDKB9YOYBB5f6vYPNfEIM
Message-ID: <CAFOi1A7vjYrEdbbN8-Wo7==y98mR2svSSYiv3Z17mdgC6bjhjg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 2V5VTR6V7MA74JQ2IM4L2NKG2KEWY6N2
X-Message-ID-Hash: 2V5VTR6V7MA74JQ2IM4L2NKG2KEWY6N2
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: rfnoc loopback to tx ports, and other warnings
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2V5VTR6V7MA74JQ2IM4L2NKG2KEWY6N2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4705523683579965482=="

--===============4705523683579965482==
Content-Type: multipart/alternative; boundary="0000000000009c932f0635cbbca2"

--0000000000009c932f0635cbbca2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 23, 2025 at 9:44=E2=80=AFAM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi Martin,
>
>
>
> I read too quickly =E2=80=93 you said splitter and duc DON=E2=80=99T acce=
pt stream
> commands.
>

Misunderstanding: The Radio-input-ports do not accept stream commands. The
split-stream and DUC blocks will happily forward them.


> Is it not correct, then, to DROP streaming commands instead?
>

Your PolConverter should one-to-fan (which it seems it does).

>
>
> What I would really like is for a streaming command that starts the whole
> pol converter stream processing to start the TX side as well, automatical=
ly.
>

If you remove the timestamps, then TX will start automatically. If neither
your PolConverter nor your UHD host code needs timestamps, you can simply
turn them off in the radio:
https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1radio__control.ht=
ml#a4a8f86f1fac5a9c356a76744aebfcc91

--M

--0000000000009c932f0635cbbca2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23,=
 2025 at 9:44=E2=80=AFAM Kevin Williams &lt;<a href=3D"mailto:kevin.william=
s@vastech.co.za">kevin.williams@vastech.co.za</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-374414040786=
795545"><div lang=3D"EN-ZA"><div class=3D"m_-374414040786795545WordSection1=
"><p class=3D"MsoNormal"><span>Hi Martin,<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal">=
<span>I read too quickly =E2=80=93 you said splitter and duc DON=E2=80=99T =
accept stream commands.</span></p></div></div></div></blockquote><div><br><=
/div><div>
<div dir=3D"ltr">Misunderstanding: The=20
Radio-input-ports do not accept stream commands. The split-stream and=20
DUC blocks will happily forward them.</div>=C2=A0=C2=A0 <span><br></span></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-374=
414040786795545"><div lang=3D"EN-ZA"><div class=3D"m_-374414040786795545Wor=
dSection1"><p class=3D"MsoNormal"><span>Is it not correct, then, to DROP st=
reaming commands instead?</span></p></div></div></div></blockquote><div><br=
></div><div>Your PolConverter should one-to-fan (which it seems it does). <=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"ms=
g-374414040786795545"><div lang=3D"EN-ZA"><div class=3D"m_-3744140407867955=
45WordSection1"><p class=3D"MsoNormal"><span><u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNorma=
l"><span>What I would really like is for a streaming command that starts th=
e whole pol converter stream processing to start the TX side as well, autom=
atically.</span></p></div></div></div></blockquote><div><br></div><div>If y=
ou remove the timestamps, then TX will start automatically. If neither your=
 PolConverter nor your UHD host code needs timestamps, you can simply turn =
them off in the radio: <a href=3D"https://uhd.readthedocs.io/en/latest/clas=
suhd_1_1rfnoc_1_1radio__control.html#a4a8f86f1fac5a9c356a76744aebfcc91">htt=
ps://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1radio__control.html#=
a4a8f86f1fac5a9c356a76744aebfcc91</a></div><div><br></div><div>--M</div></d=
iv></div>

--0000000000009c932f0635cbbca2--

--===============4705523683579965482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4705523683579965482==--
