Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECC21F6D9
	for <lists+usrp-users@lfdr.de>; Wed, 15 May 2019 16:49:29 +0200 (CEST)
Received: from [::1] (port=43748 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hQvDd-0005l2-3h; Wed, 15 May 2019 10:49:21 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:34638)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <anastas@umich.edu>) id 1hQvD5-0005b2-1e
 for usrp-users@lists.ettus.com; Wed, 15 May 2019 10:49:17 -0400
Received: by mail-ot1-f43.google.com with SMTP id l17so276347otq.1
 for <usrp-users@lists.ettus.com>; Wed, 15 May 2019 07:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=umich.edu; s=google-2016-06-03;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=gI3GoVkavxh7/M4i0O6J1Zx1hHOtJCN7R8BOYGvMUpM=;
 b=I9ckRnaxCxZ/P8H/vyJAfeyRDpXx86AicALnLtDdr3bnV+26cDc91XNHV8mFAFPdrb
 IerbRLTVb9YPafDZx0dRjBt0sQLFtqyojpWgu4+OKNOK+h/l5788XL3xifcdhpqfYa7O
 lwDoo4QcWBwEobjtC0pAEa+OXFzlUFM+3h0R3OWwAf3F0BMefy/UrfdGfYoNJuKoEyAz
 EOSmoVig3zkPfx0/Z5JHZzV8Xxp2EdgqY3gMCg2O2iin+DC/azPMbAjwZiuTeUmOTXe3
 RFcNxLjR9vS4aWYIndN5A8FvJNKU5MF9bK6MArXHFw0/g5jBACUmAkI1zhpR92wPb+SB
 DnPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=gI3GoVkavxh7/M4i0O6J1Zx1hHOtJCN7R8BOYGvMUpM=;
 b=pLvDyzpqoLxiUt9mQcCwuSNkJhOA0++ezbFc5cUtFJdnRaFUFe9l/CM5H47tKPyLT6
 mn+QK5WG5n1kAFdHj0BQ6FX/eEMfF4Pjg7ZyCuP2H+HQsxeE/0r5RmGP1GxKoSgNM3hl
 fGwuQrA52K/lGxBHDxXGHDapRTOilo4mdssYzdXDLBsmMZdjMe2M12ZCfu4IFYZoRwWs
 ah9WSYrZhVegB0ouGcH9GC0xXU1lIBlLslRE2+K7gTc1xX8puzcVSiusk5FWv0POq9Bx
 g9FbeaB8b7QRtBD6SS9rComDG0kyD0w202ZD+Sf1QPtFqr3H0KEiKy4SGgDZU/zPQIa6
 Jmhg==
X-Gm-Message-State: APjAAAXzXFFaHwPyQDxvEPGjwEHOaTBme7ZsiR+DloP2wk5Un1iHl3DZ
 1pYAzJCYsoAuj4p+wzF0R8ttWjUaNkobjZi73eRLqSV9
X-Google-Smtp-Source: APXvYqzQY4C7WGywq1iHmzmcFv+TNfihm2IaNwX61Jg0z29MrC5MvV55cg6v6wk4+7KF9lglZDzhirJWY/n1kP/7dZw=
X-Received: by 2002:a9d:5618:: with SMTP id e24mr2154444oti.38.1557931685945; 
 Wed, 15 May 2019 07:48:05 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 15 May 2019 10:47:54 -0400
Message-ID: <CADpWGZ0aCJvX_Pjw+ba2WmLWQNysuwpk9z1zSf7w3Hcas=a=OQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Question regarding connecting REF OUT --> REF IN on
 X310s
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Achilleas Anastasopoulos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: anastas@umich.edu
Content-Type: multipart/mixed; boundary="===============4399252781422217321=="
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

--===============4399252781422217321==
Content-Type: multipart/alternative; boundary="000000000000b9a4110588ee3c0d"

--000000000000b9a4110588ee3c0d
Content-Type: text/plain; charset="UTF-8"

 Hi all,

Is it OK to connect the REF OUT of one USRP (X310) to the REF IN of another?
The REF OUT says 3.3V and the REF IN says +15dBm MAX.
I used to do that all the time without burning anything but now I am
skeptical...

thanks
Achilleas

--000000000000b9a4110588ee3c0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>=C2=A0Hi all,</div><div><br></div><div>Is it OK to co=
nnect the REF OUT of one USRP (X310) to the REF IN of another?</div><div>Th=
e REF OUT says 3.3V and the REF IN says +15dBm MAX.</div><div>I used to do =
that all the time without burning anything but now I am skeptical...</div><=
div><br></div><div>thanks</div><div>Achilleas</div></div>

--000000000000b9a4110588ee3c0d--


--===============4399252781422217321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4399252781422217321==--

