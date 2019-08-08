Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD74986C03
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 23:00:28 +0200 (CEST)
Received: from [::1] (port=41258 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvpWL-0007n1-DS; Thu, 08 Aug 2019 17:00:25 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:40798)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1hvpWH-0007iZ-I3
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 17:00:21 -0400
Received: by mail-ot1-f51.google.com with SMTP id l15so67032813oth.7
 for <usrp-users@lists.ettus.com>; Thu, 08 Aug 2019 14:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=TegVMudmSgFkxAFfRL+hPbs24WSbXS7KAQ65SiJlP4E=;
 b=PH/vZ0+JlW2WYSr9F8yew9R1PZPIv/ign16jjhTUOX5Gl3QgwbidwBgdErHHY2k7q9
 LPqyFQallxZqOxrt4i0+wXNQt0N3UzM3WlwBVD8Bgds6ihcVK/ynCA/cgqkmVo3Ulfqv
 KxYbZXJ2H4Xip0WiU3hLYqZTvYnA6MqEgOQ8ONu21Ly7TSqNDcaiIGh2y7pNi43wj5vz
 mcv2HuUjbPcpkMCahNkXEuqFUIbF4bN2W7s6ICtLBw5s6yboSQEMbt5tfNZexSfNxznR
 bBta094mVPm3eJ6pu5nW0AQPrNjgfwhZJUrkGE3zq34mrGLs3AAcab10K/vsvLWb4QHw
 n2Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=TegVMudmSgFkxAFfRL+hPbs24WSbXS7KAQ65SiJlP4E=;
 b=QShWZt43KhiW5+eCuMEleCDDgEWpbHRBxCO/0DZVd9WET3C+8fElt4CZHfxR6pVXpb
 VYwtO6aSK+Syp1LLjoDnEw06WLjEAzgByZdojACRIbIx5nh9JnhlVHvUG7WQzNoW/GFm
 tEY+weOpEwrkZL/AeuM89yGe4cVgz6XKFqJoduyCHK9d4uf+N4lhTZII39K8HSufNYY/
 KphoD1NIGerbWdSRTdOeg1XbzUSFDnFYqVipBkwzfR/us7sNhoOq50csqWQxZx+Ayd28
 DW49x/lvSanF1fU3KrBgsZUikTscqu4FPFWi5DnIATmP2G9tS+l3szE3CJVhJJg1uJ3E
 rIeQ==
X-Gm-Message-State: APjAAAVguTH22MrA2sj/XfTo5BH7agO2hp3CsHrUe8KHCuQ+viBWov8p
 7ReH5n0KIXsmcgdyploFOcMGqajHZO8T/LTwdIEpW/8l
X-Google-Smtp-Source: APXvYqw1ugCqIdNj4m8dzbZ1zclKWipjUYjEt3lqDZkT9Pe3uv5kurl2P2Afagsc/ukq/GBXxLnTaCmxx3MaqlwHIyE=
X-Received: by 2002:a9d:7988:: with SMTP id h8mr14913464otm.301.1565297980534; 
 Thu, 08 Aug 2019 13:59:40 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 8 Aug 2019 16:59:29 -0400
Message-ID: <CAB__hTQH1JkxN+w8s72BsFP2qx9MVpOSWatZfUD0otzrZrRccg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] access rfnoc readback register via xml / nocscript
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7728847539721983280=="
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

--===============7728847539721983280==
Content-Type: multipart/alternative; boundary="0000000000001927f7058fa1563b"

--0000000000001927f7058fa1563b
Content-Type: text/plain; charset="UTF-8"

Hi,
Is it possible to query a defined readback register using just the default
block controller get_arg() function along with some magic in the xml /
nocscript?   I know that I can get the value using the block controller
user_reg_read64() function, but I was wondering if this can be scripted in
the XML so that it is available through get_arg().
Rob

--0000000000001927f7058fa1563b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Is it possible to query a defined readback registe=
r using just the default block controller get_arg() function along with som=
e magic in the xml / nocscript?=C2=A0 =C2=A0I know that I can get the value=
 using the block controller user_reg_read64() function, but I was wondering=
 if this can be scripted in the XML so that it is available through get_arg=
().</div><div>Rob</div></div>

--0000000000001927f7058fa1563b--


--===============7728847539721983280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7728847539721983280==--

