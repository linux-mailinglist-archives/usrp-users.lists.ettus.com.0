Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2E835363F
	for <lists+usrp-users@lfdr.de>; Sun,  4 Apr 2021 04:42:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E4CF383F3D
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 22:42:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l9cseBKs";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id D57A9383E7F
	for <USRP-users@lists.ettus.com>; Sat,  3 Apr 2021 22:41:30 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id 1so6328025qtb.0
        for <USRP-users@lists.ettus.com>; Sat, 03 Apr 2021 19:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=DmTNcVjKLj7Z4zfricIyvGxdYtcUUXkQ/omcNdz40bw=;
        b=l9cseBKsoyiafDKeIyfTbnzoaz2bbSxGm6X1LyrksB7db8bBLMFXdZRm2o5Rg38/L0
         jTd3w8+FNVBMLJ3ivARDu5IAzNrua0uU5aCHMIBPBXH5cp+2JZhzlvhp1ocJYts+Caw5
         G88zu4oLxRt8UqQ890d9YR0jhGHxL9XS1w7QHfv1AHAkTrzomZzL0xlIf6VY1385MfcJ
         DUDCxQqgVszYEntw2KJ9n3CIkqeBSejmym7U7iczv1th9nT+B9JOJJPFtLw7ETOp5rMP
         CVWRyIAy//Fb4Y17A3lMVudSDD0Xf3lOnXgIKuSdgvqTB+/eXfDBlzm1K+iLTeUMYUYF
         uCog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=DmTNcVjKLj7Z4zfricIyvGxdYtcUUXkQ/omcNdz40bw=;
        b=L3u7WW10lMFBgj8RHj5tpnoaiga97xwmja2/6zrOws0jd1EhxOm765q0b2ayF7PV0f
         HH0164JCxL0+5/Af74Yhz8hxNvxkFgEUamQmASSnQ3wSTuqgbs2o0JbyctZmcsPHhXry
         jxLDu+ti6AoJsSXjeteLHAmODAN0TuWSAOhlkzCahqGVpAW22nV5R3ijbC8kBDcFuRx0
         eMGEJJzv+9wKBcKwpBMF6A6eSEmN50x6lIzHuPl+bsj/uuCzgOfYx585703wex2dXA87
         g99flhsIwIOLTcdAhGCvx1Pn6bLXeXCz62CO7ODf4TV+ypckpdOBooq/ctAvndt7T1RI
         Sk7w==
X-Gm-Message-State: AOAM531HD2tMNlQTMgEy+KTCYEP0eaQv9QTtFvgwl2GqlmkX/V11AGMt
	C+uxr8ur3wJrUiWUuTZ87Uw=
X-Google-Smtp-Source: ABdhPJybLvDaT8LCu9tiZQ+v+7vhJ6oNMk5hDSUZtkRkJk92wixUvSu4yhTuTnuvbQ3R9eveImqmVg==
X-Received: by 2002:ac8:7d52:: with SMTP id h18mr17510668qtb.175.1617504090244;
        Sat, 03 Apr 2021 19:41:30 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id 21sm10826183qkv.12.2021.04.03.19.41.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 19:41:29 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 3 Apr 2021 22:41:28 -0400
Message-Id: <B8FE2F4E-DCD4-4A53-9F1A-5DA0B6376AA3@gmail.com>
References: <CALNMZ8UoxaHVy2PCTWQUHb2L_k9MTD-v-vczwkwhMZrpeYt-wg@mail.gmail.com>
In-Reply-To: <CALNMZ8UoxaHVy2PCTWQUHb2L_k9MTD-v-vczwkwhMZrpeYt-wg@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: UQVRKSZKNU64P6LSYFPN4EWEI7VEB3F4
X-Message-ID-Hash: UQVRKSZKNU64P6LSYFPN4EWEI7VEB3F4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UQVRKSZKNU64P6LSYFPN4EWEI7VEB3F4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3315079736537333904=="


--===============3315079736537333904==
Content-Type: multipart/alternative; boundary=Apple-Mail-377AEF1E-E9F0-4339-8E44-58CE9D7D48B1
Content-Transfer-Encoding: 7bit


--Apple-Mail-377AEF1E-E9F0-4339-8E44-58CE9D7D48B1
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



>>=20
>> One caveat; the pi USB 3.0 interface can=E2=80=99t quite keep up with the=
 B-210 and I get an overflow when capturing 20MSPS on 2 channels at about 50=
0k samples. I don=E2=80=99t know if this is hardware or software, but if any=
one knows of a solution, I=E2=80=99m all ears. Having said that, I can consi=
stently and reliably capture 400-500k samples sized files.
>>=20
Writing to the file system at 10s of MSPS is a very demanding application. A=
t 20Msps with complex-float samples, that=E2=80=99s 160Mbyte/second. It woul=
d be a miracle if a lowly rPi4 could sustain that.=20

You can usually get away with shorter runs because of Linux write-behind cac=
he. But once it starts needing to =E2=80=9Ccommit=E2=80=9D those writes to p=
hysical media the piper must be paid.=20


>> I=E2=80=99d be happy to share the install instructions. They are lengthy.=
 -page
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-377AEF1E-E9F0-4339-8E44-58CE9D7D48B1
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><br><br><blockquote type=3D"cite"><div dir=3D=
"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><p><br>One caveat; the pi USB 3.0 interface can=E2=80=99t quite keep u=
p with the B-210 and I get an overflow when capturing 20MSPS on 2 channels a=
t about 500k samples. I don=E2=80=99t know if this is hardware or software, b=
ut if anyone knows of a solution, I=E2=80=99m all ears. Having said that, I c=
an consistently and reliably capture 400-500k samples sized files.</p></bloc=
kquote></div></div></blockquote>Writing to the file system at 10s of MSPS is=
 a very demanding application. At 20Msps with complex-float samples, that=E2=
=80=99s 160Mbyte/second. It would be a miracle if a lowly rPi4 could sustain=
 that.&nbsp;<div><br></div><div>You can usually get away with shorter runs b=
ecause of Linux write-behind cache. But once it starts needing to =E2=80=9Cc=
ommit=E2=80=9D those writes to physical media the piper must be paid.&nbsp;<=
/div><div><br></div><div><br><blockquote type=3D"cite"><div dir=3D"ltr"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>I=
=E2=80=99d be happy to share the install instructions. They are lengthy.  -p=
age</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-377AEF1E-E9F0-4339-8E44-58CE9D7D48B1--

--===============3315079736537333904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3315079736537333904==--
