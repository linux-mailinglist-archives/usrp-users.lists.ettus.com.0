Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7632FBDB7
	for <lists+usrp-users@lfdr.de>; Tue, 19 Jan 2021 18:32:56 +0100 (CET)
Received: from [::1] (port=57704 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l1usA-0004ac-BD; Tue, 19 Jan 2021 12:32:54 -0500
Received: from mx0a-00364e01.pphosted.com ([148.163.135.74]:30618)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <mpk2138@columbia.edu>)
 id 1l1us5-0004Tk-Uh
 for usrp-users@lists.ettus.com; Tue, 19 Jan 2021 12:32:50 -0500
Received: from pps.filterd (m0167068.ppops.net [127.0.0.1])
 by mx0a-00364e01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 10JHBh18017072
 for <usrp-users@lists.ettus.com>; Tue, 19 Jan 2021 12:32:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu;
 h=mime-version : from
 : date : message-id : subject : to : content-type; s=pps01;
 bh=lOslx7Bj5BC8MzjSzsBLwagOIhSGvaZTjiGVhT9/DvU=;
 b=tpdenH6bm2QtVpTEnl+q2OLW92B+WqP0EOg6WiHLtUB9fRiqi4HUK2D6aVHeCyYdSXBq
 GfTmNzWLKOLi27jwCpjNhJQQ8OnMMXIyWmY3NlbYb7b3epfctG07BBAjF67OOE+zK0YQ
 nab+L9eExZJx+MqxQxLk7X12/FoNd5Ase47bsZAG4GGpFyDw3Gbi1uRUmtcHCbFkWJkP
 Wa6ksQ03M9xwGiPxsVbodIq3YwxnbR0x1xFT/idoesaoMs5pL85HLVnzkGYtvHyXGrhe
 SpsRp1ZMHrZSOP/WjWxgH9l/6d4jNb9pU1plg986rLSh7mzin0b8X5gOFpdD5ls7g9Ik 5A== 
Received: from sendprodmail10.cc.columbia.edu (sendprodmail10.cc.columbia.edu
 [128.59.72.18])
 by mx0a-00364e01.pphosted.com with ESMTP id 363ua1y756-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Tue, 19 Jan 2021 12:32:08 -0500
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71])
 by sendprodmail10.cc.columbia.edu (8.14.4/8.14.4) with ESMTP id 10JHW7LU064498
 (version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Tue, 19 Jan 2021 12:32:07 -0500
Received: by mail-io1-f71.google.com with SMTP id m14so7110345ioc.13
 for <usrp-users@lists.ettus.com>; Tue, 19 Jan 2021 09:32:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=lOslx7Bj5BC8MzjSzsBLwagOIhSGvaZTjiGVhT9/DvU=;
 b=GVSXoOR08zzWkLv3rykCYOSd8UlLsyDiR70hVeux62JwG27OEgKTP490CxxMLzR9IR
 yEjYx3F9ZwBRNBrtJXSqgzRm46G2tn3Rd7uc+uVYsp1RYHhEXxsmClw9VQqcI5kzHWm7
 1y1JMB5P0EMwmF33ZSs7gK8G8nftQkbbO7gKP92bypzLtfogpKcbQjTMRWNiuHohMurX
 YEOtVIry91+rneI2Wota9T9/h6W2rif3zWxi/I4lUWBOpd1avtthZW3gUGGmiZw5+CGM
 27ZZ9OwV8d3Bfjl1knf36ZoAVY3JSj6cZ04KWlcU2iRSavmTfH3xnJReNo/e2ToqwYSH
 G0pw==
X-Gm-Message-State: AOAM532+GD2/bHQawChSZWhx6sCtDyrBHSbmyULErXrYXDcXg5jmGbOJ
 v+g22l6tXs25wz69AUptnpV6HpVZ6421+1KLkiMuJsKTLqrNMfnQO6czYs96d+vcuWRsBf2Mk5g
 7nlOO9micOVGgMtYuOfTV6Gapj6EgXciWQj50JgoM3Yz+
X-Received: by 2002:a92:b6dd:: with SMTP id m90mr3651197ill.97.1611077526972; 
 Tue, 19 Jan 2021 09:32:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyJRWnlWQEfZC9mEl94/5hEU9guWqdYlktIAT1zIiUAkYHUs2RivNURC4wDIUmABOaTYi2qOFYRqDiGeXtkfWQ=
X-Received: by 2002:a92:b6dd:: with SMTP id m90mr3651162ill.97.1611077526509; 
 Tue, 19 Jan 2021 09:32:06 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 19 Jan 2021 17:31:31 +0000
Message-ID: <CAGsYvih5a3A7LR0NCV53tmyZSEeodajjGEgngVSFUfA8=9WPqw@mail.gmail.com>
To: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
X-CU-OB: Yes
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2021-01-19_07:2021-01-18,
 2021-01-19 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_notspam policy=inbound score=0
 mlxscore=0 priorityscore=1501
 lowpriorityscore=10 suspectscore=0 clxscore=1015 bulkscore=10 spamscore=0
 adultscore=0 mlxlogscore=691 phishscore=0 impostorscore=10 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101190097
Subject: [USRP-users] Guaranteeing synchronous startup of X310 and N210
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
From: Manav Kohli via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Manav Kohli <mpk2138@columbia.edu>
Content-Type: multipart/mixed; boundary="===============0936665638361884695=="
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

--===============0936665638361884695==
Content-Type: multipart/alternative; boundary="000000000000ac6cd505b94437fc"

--000000000000ac6cd505b94437fc
Content-Type: text/plain; charset="UTF-8"

Dear USRP mailing list,

Hope everyone is well. I have a GNU radio flowgraph with a USRP N210 and
USRP X310 synchronized with the Octoclock. When starting the flowgraph, I
can see a random sample offset between the N210 and X310. As the two radios
are synchronized, the sample offset does not change for the duration of
running the flowgraph, but it is random every time the flowgraph is
started. This is not amenable to the time slotted system I am trying to
work on.

I am aware that the X310 and N210 may not be simultaneously used in a USRP
Sink or USRP Source block (or in UHD, in a multi_usrp object). With this in
mind, is it even possible to guarantee that the X310 and N210 have the same
startup time, namely that they begin transmitting and receiving at exactly
the same time?

Thank you very much!
Manav

--000000000000ac6cd505b94437fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear USRP mailing list,<div><br></div><div>Hope everyone i=
s well. I have a GNU radio flowgraph with a USRP N210 and USRP X310 synchro=
nized with the Octoclock. When starting the flowgraph, I can see a random s=
ample offset between the N210 and X310. As the two radios are synchronized,=
 the sample offset does not change for the duration of running the flowgrap=
h, but it is random every time the flowgraph is started. This is not amenab=
le to the time slotted system I am trying to work on.</div><div><br></div><=
div>I am aware that the X310 and N210 may not be simultaneously used in a U=
SRP Sink or USRP Source block (or in UHD, in a multi_usrp object). With thi=
s in mind, is it even possible=C2=A0to guarantee that the X310 and N210 hav=
e the same startup time, namely that they begin transmitting and receiving =
at exactly the same time?</div><div><br></div><div>Thank you very much!</di=
v><div>Manav</div></div>

--000000000000ac6cd505b94437fc--


--===============0936665638361884695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0936665638361884695==--

