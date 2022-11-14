Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C23E628748
	for <lists+usrp-users@lfdr.de>; Mon, 14 Nov 2022 18:40:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 75AFA38104E
	for <lists+usrp-users@lfdr.de>; Mon, 14 Nov 2022 12:40:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668447607; bh=VlNB358FtY04zGcMdYWnTA0swKQHNUNGIwJiRMKlDjg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GmDL/1fZQOrozQ97Cq/VujlwtDfhS5pUBx347nUWMFIZvon1VqpTeJCR7xcH3LsbE
	 siCBO1H8sTFVqSDPinVx5eBua8dgEyWEii0ftWbalkPAtckQKW5g2n7PWC2kerg/4c
	 TXtHpGpEybxGaVpFd6yK3fafympC06EohNaUnID9y5Btg2fOsBSUxgKH25ovzruQGd
	 XyQP9m8iiFfdAwsYtgUMC6wUI6jVM2aOYUtCAaJJ9R9aDGQ7P76QdmKBICA0Z/veZf
	 Qq3lfr2w6Cs8sOc9owvaKmHgWU3TnJS+KrMdadKwgjGEq1bsGraMQTup8q2TrzqqWj
	 87rfIVupvR/OA==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 406FD380964
	for <usrp-users@lists.ettus.com>; Mon, 14 Nov 2022 12:39:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="eN+aTcTe";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id kt23so30151125ejc.7
        for <usrp-users@lists.ettus.com>; Mon, 14 Nov 2022 09:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fiXZ6UREpwxrMIjkg5lKxnyPbGezu+RR+Oizqrk1Brk=;
        b=eN+aTcTeUUG4w5g724UldGo/HpBCVDMfySBW6q05MDI/JmaDW5v8noqf4UJMw8If9h
         plPdk/WOkwg3TFZ7o3BJubLP0YaQJyU0CTrgFGdYM4GZz8fNIl95/lg7AJ3cPXLBsXRm
         1se991DJR2th7t/yYqOnTfm9zdWOQrl45VWiShFSBwqw8SwDDN57wASIGMH3m1JvlWsj
         6+1j/xOphnA0kfRFZVir+TV51PCV8DNco0B5XhQMdiH2twTbzEavTCvv6peYJWXB77D0
         TfFno+SlF7+b2OPaoOIhkjK/UIzpslc+hIZ+BaQsRNuqvkspoumJeCO4ZMpPVO1mms0+
         99kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fiXZ6UREpwxrMIjkg5lKxnyPbGezu+RR+Oizqrk1Brk=;
        b=hAQ6u/M7CMKmjdA9d027OSa5z/BgidCFLh/BavqIdGalcj/fQVxDRamAKpHvBcMFV9
         PjzZEeK2osR0Hd7h1HgEx4s1rRex8FVQDruHBGTbEIEtY08evl9jx0+4J8/LmJoFviL+
         2laugHQII9TPQ7BVZfF34XE6+f6yh+kPQZmpJvoAc29NOnFzh/j4C45n7a/v1XCYQafo
         DppsfFD7KZAK8i5vmlu4iJPfJs0/uQnlSMfmJhCijwpOpNDh7pP9jNuMLQkMt/3K1FR2
         ZO54OF+MaH9+WAPHF+bW8BK5xDBWmvWwokLtm/ybUF5oJMrRtiBm05y/5KBYnyDkw6Ra
         iayg==
X-Gm-Message-State: ANoB5pl2ae2680VMTDMEKW1p/dbteUyhsyNM181kuuGv3qHiNtrOglc4
	ZJ5FpJqdPat/PTLM4Z6CYpOrpvrYhnJRPs0Th2Q1zniN
X-Google-Smtp-Source: AA0mqf4FdaBB4+oG42ofABXZlEyNan7fGgG2wNmSk6ePBlMgDcz0m8Igqn/wVin3EMHpagHsrG8jcGS5InxwVc8sb7c=
X-Received: by 2002:a17:906:ae52:b0:7ad:4a55:5e19 with SMTP id
 lf18-20020a170906ae5200b007ad4a555e19mr11219626ejb.65.1668447598093; Mon, 14
 Nov 2022 09:39:58 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PvXr0FH_K7UaVf0qRmTW+yfxf5XCbFRmsVt00vN1yr41Q@mail.gmail.com>
In-Reply-To: <CAA=S3PvXr0FH_K7UaVf0qRmTW+yfxf5XCbFRmsVt00vN1yr41Q@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 14 Nov 2022 11:39:41 -0600
Message-ID: <CAFche=ji8_d9557KrAuPkeW2kFpHp6hbXi+cNDyV62M6c_Yuqg@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: NPLD6AQXNWMBTP3LQQQYR4C5RHOWCE7Y
X-Message-ID-Hash: NPLD6AQXNWMBTP3LQQQYR4C5RHOWCE7Y
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How many user reg we can define in a RFNOC block?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NPLD6AQXNWMBTP3LQQQYR4C5RHOWCE7Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6044674592098743426=="

--===============6044674592098743426==
Content-Type: multipart/alternative; boundary="00000000000069403605ed71ba1f"

--00000000000069403605ed71ba1f
Content-Type: text/plain; charset="UTF-8"

There's no limit. See previous answer here:
https://lists.ettus.com/empathy/thread/XECWYF2DOQI2BKWFZ6SQM47I3BX2VCRS

Wade

On Mon, Nov 14, 2022 at 10:37 AM sp <stackprogramer@gmail.com> wrote:

> I have developed some RFNOC blocks. I had a question.
> in an RFNOC block HOW many user registers can we use? can we use three
> user reg in a RFNOC blocks?
> Thanks in advance
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000069403605ed71ba1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There&#39;s no limit. See previous answer here: <a hr=
ef=3D"https://lists.ettus.com/empathy/thread/XECWYF2DOQI2BKWFZ6SQM47I3BX2VC=
RS" target=3D"_blank">https://lists.ettus.com/empathy/thread/XECWYF2DOQI2BK=
WFZ6SQM47I3BX2VCRS</a></div><div><br></div><div>Wade<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 1=
4, 2022 at 10:37 AM sp &lt;<a href=3D"mailto:stackprogramer@gmail.com" targ=
et=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I have developed=C2=
=A0some RFNOC blocks. I had a question.<div>in an RFNOC block HOW many user=
 registers can we use? can we use three user reg in a RFNOC blocks?</div><d=
iv>Thanks in advance</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000069403605ed71ba1f--

--===============6044674592098743426==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6044674592098743426==--
