Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D8D2F0370
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jan 2021 21:30:43 +0100 (CET)
Received: from [::1] (port=38082 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kyKsh-0008P2-S0; Sat, 09 Jan 2021 15:30:39 -0500
Received: from mail-ua1-f47.google.com ([209.85.222.47]:42073)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <koncept1@gmail.com>) id 1kyKse-0008K6-NK
 for usrp-users@lists.ettus.com; Sat, 09 Jan 2021 15:30:36 -0500
Received: by mail-ua1-f47.google.com with SMTP id n18so4645180ual.9
 for <usrp-users@lists.ettus.com>; Sat, 09 Jan 2021 12:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=egdJWJXpJjuheB5hjjJWkp6VFVdYZnD6eOhTdU98+00=;
 b=kp67eb2o4x5FB+8/Gp9Sq8g28my3Cr4QrlyFqD59xYBncKKR5wT6EcgF1crcrP/kVd
 uCYcNsMZUCPA4ZgrQdGuLLejzOdSrM7Z2QMfn+dQ0YhoqNGPG3fNG1hjlvEcuwdsgxUy
 2v43pysdZhCGaRDsqZiqW8hqSVm8lleCe9F03xqtLzKp6+Im4w31uHy1FH/K80MPx+c6
 ZqFPyBvvGjQ6WQKM0DgK9BwkC5vHGnCIJ/ktd6T+krA4bOuNFrHICoj/3Y22m7Lr6wsf
 0jnDrowJFoOeN0aJ9wwnWH6wcXZILmW2Mq7/kAwFG2GgXO/bKPPTxnx3dQrjDONObSBk
 V07A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=egdJWJXpJjuheB5hjjJWkp6VFVdYZnD6eOhTdU98+00=;
 b=pcTpdIKEjhiWu1BHKmDN4KlG4bSVwHntRL95Wnl47DtK/wx4msxr5T002C7Z37FVrq
 IsYbytY5YXGDXhiVUSz75URcpT4oFET6dEdwF1/tAvKgUsceXcyZpxYvd1yHnFFr+TiI
 yj+8MjUfuRlZ+NgnJfOuV2FBzKmdIMdOB01IpTITxedwhF0W1dvVUcyVOiIKJbQRHHZS
 TT0PQHVNyGieIzozmYnbpmQt3Q26er4luEHvEfj9YzIeT5eENZ5EARjSZoEzzZsdpdQf
 n3QYCUWRTwJBQx+I05x8r1AG45nac5wpxLZytyI+Awrs/yrV2y5d71/rBjH3ygyiL5D3
 ODkw==
X-Gm-Message-State: AOAM533VRJ4vbKQ72mlTvwWurUJ7v0J07qYxIZwwSdm3Lc1dP8nKDx/Z
 X+j1p6XhiwBKMscSZyDSE5+JNXR6BbLiJMqpHNo=
X-Google-Smtp-Source: ABdhPJzsuZnAdFqVdF0gZNQ2QtTMmjamZfjdE6FwmeUS05PyZXnZEIKYmKxhpjvshF7drw4pxiKWFLYUV5iV+UF+JAw=
X-Received: by 2002:ab0:6785:: with SMTP id v5mr7745419uar.72.1610224196112;
 Sat, 09 Jan 2021 12:29:56 -0800 (PST)
MIME-Version: 1.0
References: <CAKx8PBi=-d5=yfyPf_=AVJYrvQq1-eshS5EW=jLzogS9uO6nRw@mail.gmail.com>
 <CAGNhwTMz2w-kD=a4m9EeLHqsXP9cKgXhok+jsW1Tu=einSvgyQ@mail.gmail.com>
 <CAKx8PBgNoL6bAf8o-hXr0HnJnNaAj5XknPF5RPamY3Cs_hYCEg@mail.gmail.com>
 <CAKx8PBjjDas_yuBxOgM6O8R1zqgZUiYavqFfidu87n1_qEsDrA@mail.gmail.com>
 <c53ab9dd-b83a-80e7-f3d9-c54dd639b201@comcast.net>
 <7dd171e1-ee65-358a-6ad0-3a76fc234957@balister.org>
 <4a0ab3d4-4650-b896-b856-08a53a3309b8@balister.org>
In-Reply-To: <4a0ab3d4-4650-b896-b856-08a53a3309b8@balister.org>
Date: Sat, 9 Jan 2021 15:29:44 -0500
Message-ID: <CAKx8PBhYvNhRKkHfPft1o_=LfYy15QECbaOGyr8B5xM4j9p+iA@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Subject: Re: [USRP-users] meta-ettus-v4.0.0.0 segfault
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ben Magistro via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ben Magistro <koncept1@gmail.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0220828030805207541=="
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

--===============0220828030805207541==
Content-Type: multipart/alternative; boundary="00000000000037d36205b87d89a9"

--00000000000037d36205b87d89a9
Content-Type: text/plain; charset="UTF-8"

Finally getting a chance to circle back to this and I would rather be on
dunfell but the bsp for the E310 doesn't appear to have been ported yet.  I
made an attempt but cannot build an image successfully and need to do a
better set of diffs on the kernel patches.

Has anyone else started on a dunfell port?

Ben

--00000000000037d36205b87d89a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Finally getting a chance to circle back t=
o this and I would rather be on dunfell but the bsp for the E310 doesn&#39;=
t appear to have been ported yet.=C2=A0 I made an attempt but cannot build =
an image successfully and need to do a better set of diffs on the kernel pa=
tches.<div><br></div><div>Has anyone else started on a dunfell port?</div><=
div><br></div><div>Ben</div></div></div>

--00000000000037d36205b87d89a9--


--===============0220828030805207541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0220828030805207541==--

