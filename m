Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E381C3FFC
	for <lists+usrp-users@lfdr.de>; Mon,  4 May 2020 18:34:31 +0200 (CEST)
Received: from [::1] (port=33728 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jVe33-0005wA-9r; Mon, 04 May 2020 12:34:29 -0400
Received: from mail-wr1-f52.google.com ([209.85.221.52]:39381)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <miscengr@gmail.com>) id 1jVe2z-0005lw-5l
 for usrp-users@lists.ettus.com; Mon, 04 May 2020 12:34:25 -0400
Received: by mail-wr1-f52.google.com with SMTP id l18so10991688wrn.6
 for <usrp-users@lists.ettus.com>; Mon, 04 May 2020 09:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=v3fKnKWh+e6V67FC4N9l3YUbJJOfK9OU1kNd8QFNbCI=;
 b=kGKck1hGqnpXe5M2cs6EVHG34NbIdESXqFkht6sjxCWUoTbA0RQYvOj4yGf3hEeJAo
 1NZDNsfj8QR88+ffRLta4Vslp3OlTt5n51GpOeclOAOHzL3aVrA7Q4d9aMZ3fzX2yvuV
 2k7pFFAGTsaIB3hZZTKC9TBuXXP0/r98QqrHMduPUaenV7RiJ9W65D/vvVnysWKdiCYM
 4t+09rSKBeLM4C1h5WZNA/pkIGta1lV/8RrTjJXPsVoCBB0FTx5Wjc4EZpEZVJSS3IPV
 uzkGBydA2hsBGrS4m0YiVYaBcATdMgwVCCdb9QE7v3BSIVy7tTHRnTla6b2kDfTl6Z1k
 i/vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=v3fKnKWh+e6V67FC4N9l3YUbJJOfK9OU1kNd8QFNbCI=;
 b=VXxlCEu2GkBARPp5Gy0abA1Z8bdeu9mBunK3SvmfsWG30g7WBemlvlbZUamnVBtZ1I
 z+fKOcpE/N7ud7AIKhIN1LIqcl+xr3/WECM+oz7AlZ4Dmjy6YbdMgkMz9sv/aN/FSRyh
 0bbIUc+eMitnV7CVe31niWXzmcb5jkCZXeT0Mh8/x2KgUvbZpOeztJm3dig7tevnPpYr
 A1v47uf5EW/69f0ktVy7aUwPSxVRZzT/mRKbonM2oqwKyahQEOPOJrL49M4W+Gj6j23Y
 k7Y4stCwgPuywuClFT92VusdO9601SuywdM7A5JFkOY8XD8u3CgR6x+r6Ca5xbPY5aai
 iAdg==
X-Gm-Message-State: AGi0Puabx1SltiFlhilJ7/geMXKjVrXFjK+/4mRZBPNoJfsJ6wskPw90
 OBPqASLF2YmvDfrjVoCyBd1T9PxuaoCs0xgLF3a77A==
X-Google-Smtp-Source: APiQypIEmxDyvUGMQ4Hytt9bLJMH+aWsySccNjNxF+R3hJ4auxSgIqjK6oyreLKxGcfRuYt73VD/xbvGt1cQb1+LpF4=
X-Received: by 2002:adf:fa41:: with SMTP id y1mr103468wrr.131.1588610024151;
 Mon, 04 May 2020 09:33:44 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 4 May 2020 12:33:33 -0400
Message-ID: <CAPCkAAdsxxDTqF+76i_NssTPjJT-qkxd1M+nax0pLYUAnRqhVg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] B2xx DDC Gain Adjustment
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
From: Misc Engineer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Misc Engineer <miscengr@gmail.com>
Content-Type: multipart/mixed; boundary="===============7297128026191855847=="
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

--===============7297128026191855847==
Content-Type: multipart/alternative; boundary="0000000000002d1e4b05a4d51862"

--0000000000002d1e4b05a4d51862
Content-Type: text/plain; charset="UTF-8"

Marcus,
That you very much.  This was very helpful.  I agree that putting a gain
block into the GR application is ideal and that is the initial direction we
are pursuing.  Ultimately, we might be moving some processing into the FPGA
if resources permit which would necessitate the use of gain scaler at the
output of the DDC in the FPGA.  One of my tasks is to determine the what
will be required for such a change.
Sincerely,
Andrew

--0000000000002d1e4b05a4d51862
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Marcus,</div><div>That you very much.=C2=A0 This was =
very helpful.=C2=A0 I agree that putting a gain block into the GR applicati=
on is ideal and that is the initial direction we are pursuing.=C2=A0 Ultima=
tely, we might be moving some processing into the FPGA if resources permit =
which would necessitate the use of gain scaler at the output of the DDC in =
the FPGA.=C2=A0 One of my tasks is to determine the what will be required f=
or such a change.<br></div><div>Sincerely,</div><div>Andrew<br></div></div>

--0000000000002d1e4b05a4d51862--


--===============7297128026191855847==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7297128026191855847==--

