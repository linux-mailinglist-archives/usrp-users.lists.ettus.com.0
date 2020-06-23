Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DBD20571D
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 18:22:34 +0200 (CEST)
Received: from [::1] (port=52084 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnlgt-00086Z-6q; Tue, 23 Jun 2020 12:22:31 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:40443)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jnlgp-00080v-Ht
 for USRP-users@lists.ettus.com; Tue, 23 Jun 2020 12:22:27 -0400
Received: by mail-oi1-f172.google.com with SMTP id t25so19309291oij.7
 for <USRP-users@lists.ettus.com>; Tue, 23 Jun 2020 09:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4yVvyHSXelFOEk73gcyRrWc1AkEKlbFo4CuPUt3LdPU=;
 b=RE0eqjNUHoyHoaTiOOyKBzoNvPN4Eu1SUCwV8bYoUiE+rCYocUHCKjSKM0cy+Hglhn
 lbnrNWsXU1J8MkEcfEMKiWjymf5qrkXPRBIX6zg7W02+n2jpAE01e0/TUipeTTFqX5sU
 /Qvh1lWWn3F4ZMU3ZhxXHLAbq8lUdmrWr6lW6bBzroK1TI69XByXuUILoXPvoZxOENPn
 yG20bXriHaGcqcXsepVRR8qRQdhhN/ldVtwMgimcJTZZmVKm6pvGUXgcGMMvvVxlFSzO
 hxXCnp8ZKsfImr4Ly4UDUOdl16mhGpNKxjadOP9i6VO4MQFSB/t3bvKNiXJJUlcrnPz9
 5LFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4yVvyHSXelFOEk73gcyRrWc1AkEKlbFo4CuPUt3LdPU=;
 b=SSo6ipJTpFgtP6JBnAld4WWLPizpQGh5jCLBlSvNNs8CNiR554SPmZTj2PF27V+oM1
 74wN+bWMeheT2GmHWxIoZhzm3ZMlycvVGJe2S6LgqCSnLYPZ4QbrlrGDRy6aswqgkxAn
 ffKHjqNLQB1xQ6VbMtw+BBXfCFXH4xwzrdQ5HBz0jNGYBFziKx6wkjZhPOBoD7zXHCLA
 lEyUXyGqQqRJvOUdGh4GB2em/EWAezKfUr4ufuyEwukWFZhv7O8bgCb6pTTp1rFNXBpc
 mg0lAK1GXIhOdLWUYbXfDQy9BM7YpyD8S5ugqpKEUjUzSMlGawuwIyFEoFLLYd/S4SVe
 UkVw==
X-Gm-Message-State: AOAM530ozNpFs40rcRvjd3hRNzVhAVCYWOIhcQ7OmelgPVj2Rbak8FFk
 olYaHGAwLXPORLNEvJQ9cwgJ+VkvlJVNXIf0ZpI=
X-Google-Smtp-Source: ABdhPJwegVEo4q41RxdjUq05ew7iOle32PIKuA8ox+YA15gDsL0KwzD83mIBugaQabD8vz0ivA78ENoqqeGv7XCJFXo=
X-Received: by 2002:aca:5190:: with SMTP id
 f138mr17269634oib.177.1592929306726; 
 Tue, 23 Jun 2020 09:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAKU1+bjUbmooO6wHGd085fNGQng873n5VdtiDCPYnTEoqMT8XA@mail.gmail.com>
 <181DF584-DAE3-4267-AFD3-C7C61CCC6C12@gmail.com>
In-Reply-To: <181DF584-DAE3-4267-AFD3-C7C61CCC6C12@gmail.com>
Date: Tue, 23 Jun 2020 12:21:33 -0400
Message-ID: <CAEXYVK5B=3p7ZA076ftPiUYH6dG13kA+hh227SV5wnDeZow_Pw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] AM transmission
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3438376159847117057=="
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

--===============3438376159847117057==
Content-Type: multipart/alternative; boundary="0000000000007ad40b05a8c2c1dc"

--0000000000007ad40b05a8c2c1dc
Content-Type: text/plain; charset="UTF-8"

On Tue, Jun 23, 2020 at 12:08 PM Marcus D Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Phase offset as measured against what, and how would that matter for a
> not-phase-sensitive modulation?
>

Maybe the 9361 on the B205 could be attacking the AM as an adaptive DC
offset correction.  Maybe a low-IF approach should be used to see if the
problem goes away?

Brian

--0000000000007ad40b05a8c2c1dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jun 23, 2020 at 12:08 PM Marcus D=
 Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Phase o=
ffset as measured against what, and how would that matter for a not-phase-s=
ensitive modulation?</div></blockquote><div><br></div><div>Maybe the 9361 o=
n the B205 could be attacking the AM as an adaptive DC offset correction.=
=C2=A0 Maybe a low-IF approach should be used to see if the problem goes aw=
ay?</div><div><br></div><div>Brian</div></div></div>

--0000000000007ad40b05a8c2c1dc--


--===============3438376159847117057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3438376159847117057==--

