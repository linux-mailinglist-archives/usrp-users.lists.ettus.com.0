Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D01A149C2D
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jan 2020 18:57:13 +0100 (CET)
Received: from [::1] (port=59080 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ivm9o-0003qF-AZ; Sun, 26 Jan 2020 12:57:12 -0500
Received: from mail-qt1-f196.google.com ([209.85.160.196]:45657)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ivm9k-0003j6-93
 for usrp-users@lists.ettus.com; Sun, 26 Jan 2020 12:57:08 -0500
Received: by mail-qt1-f196.google.com with SMTP id d9so5681629qte.12
 for <usrp-users@lists.ettus.com>; Sun, 26 Jan 2020 09:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=z4e0egRuWtltE1UNA7PK+Psfw0WQBUusnl/GphwmMbU=;
 b=tFgr6m+qNM2l6ST2naPCQQDx2+JCFYRnyPMNnzkdt0kLKxqmOkpFjE1D9zwffe4EWr
 M1Zau++TJS/A2GpbOwzhEoU5aZMH9ptyuTow9lAH7kif8mzj2vVnL+pVz8UCRQ9afQ+F
 XIJsmMbek99oTBgL3x6u+/zO1uNYqD8MQ/7+uzfQek347g9F2Ots7DVuBIfgfQ6Ffr8O
 kagnoSDIY4IalH4vLBrEXQeu4Piz2wVUJ/e5Euiyb0qyfHoiezfoAxL3a/sFVIvJpSHA
 /aed6giV7cER7ufHnytFQK0EE1kQikZ82yLp+B0srbZo+XUkpVWqQZ8Sqlc+S6pM+2Gp
 duug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=z4e0egRuWtltE1UNA7PK+Psfw0WQBUusnl/GphwmMbU=;
 b=qjQioTn1qF3PqjWw+UdPXQh6QY1mYvLYoX9lDHjY4GRpykq7vJILeqadcCttF5BCSP
 BfrKF7a6wpt+2hTDKI0iij5OyH8tzWuEmvmuT7r+Jo3vPKbJ3N2kQ7WAz5QYFhSl3Nw/
 lfZ6l5v3NSaB4vqqn7JTgCt2FyQ+pNFFP/MYerjqNSgHeRrnzYZOnt4wc47r2N5jUNJv
 JYTuiD9XmHvRbIa0DSRGGB8mT841uXqizS9a7aft2rKsGHnWOmj302T9hLd5cXX6HISp
 l6xazI0WYNALQfDCXBtQfee+MuGQ+NceIC12so6KoRYQkNR1Py7LieP5fTNTaMMkmRRI
 qZyw==
X-Gm-Message-State: APjAAAWXR/4VcuNyIJ3Ov3y8JWwp7EXtdGDekwRsYeviaDoIUY9QqlkW
 NT8yKUVvnnDvsVUhBT0u9voBxS2R8vY=
X-Google-Smtp-Source: APXvYqzSKpxLqJvGsLzqNIKgo8wL2wA++NLvuDpX3hCdVg23xdVyMx7wJpsVfRgZ8OuLbWL3iSo5sw==
X-Received: by 2002:ac8:4085:: with SMTP id p5mr3894807qtl.132.1580061387450; 
 Sun, 26 Jan 2020 09:56:27 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id z5sm8042291qts.64.2020.01.26.09.56.26
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 Jan 2020 09:56:26 -0800 (PST)
Message-ID: <5E2DD2CA.60502@gmail.com>
Date: Sun, 26 Jan 2020 12:56:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAE6G02_pDDd2H5yX8Sf2jqBC7bo1hnqBMgz5-i09NBCBYSoZgQ@mail.gmail.com>
In-Reply-To: <CAE6G02_pDDd2H5yX8Sf2jqBC7bo1hnqBMgz5-i09NBCBYSoZgQ@mail.gmail.com>
Subject: Re: [USRP-users] DOA with N310 or X310+TwinRX
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 01/25/2020 11:43 AM, Sammy Welschen via USRP-users wrote:
> Dear all,
>
> I am planning a system with 5-10 channels that is capable of DOA 
> estimation.
>
> Concerning the calibration of the resulting array, would there be a 
> difference between a system made up of N310 and one made up of X310 
> with TwinRX boards? Would there be other important differences that 
> influence estimation performance?
>
> As I understand it, the TwinRX allows LO sharing between the boards in 
> a single X310, but this would not help me if I have two or three X310. 
> On the other hand, the N310s could be connected to a shared LO.
>
> Are the following thoughts correct?
>
> Suppose I turn on my system. Then I have to calibrate phase offsets 
> between channels in any case. Now I change the center frequency. If I 
> have N310s without shared LO, I have to recalibrate. Same for the 
> X310s, since LOs are shared only internally. If I have N310s with a 
> shared LO, I do not have to recalibrate.
>
> If I restart the system, I have to recalibrate in any case.
>
> The devices would by synchronized with PPS in any case and with the 10 
> MHz reference if no external LO is used.
>
> What is the better choice for DOA estimation (N310 or X310 with TwinRX 
> or something different)?
>
> Thank you very much
>
> Sammy
>
>
Sammy:

Your characterization of the two scenarios is correct.

There may be some folks on this list who have implemented DOA schemes, 
but likely few-to-none who have done it on both X310 and N310
   and can comment on the differences they encountered.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
