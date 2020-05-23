Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EBB1DFAE1
	for <lists+usrp-users@lfdr.de>; Sat, 23 May 2020 22:08:12 +0200 (CEST)
Received: from [::1] (port=56270 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jcaRF-00082A-4A; Sat, 23 May 2020 16:08:09 -0400
Received: from mx0a-00364e01.pphosted.com ([148.163.135.74]:65306)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <mpk2138@columbia.edu>)
 id 1jcaRA-0007Hj-GH
 for usrp-users@lists.ettus.com; Sat, 23 May 2020 16:08:04 -0400
Received: from pps.filterd (m0167072.ppops.net [127.0.0.1])
 by mx0a-00364e01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04NJhbuM030710
 for <usrp-users@lists.ettus.com>; Sat, 23 May 2020 16:07:23 -0400
Received: from sendprodmail11.cc.columbia.edu (sendprodmail11.cc.columbia.edu
 [128.59.72.19])
 by mx0a-00364e01.pphosted.com with ESMTP id 31700u1a21-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Sat, 23 May 2020 16:07:23 -0400
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by sendprodmail11.cc.columbia.edu (8.14.4/8.14.4) with ESMTP id 04NK7LrT060130
 (version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Sat, 23 May 2020 16:07:21 -0400
Received: by mail-il1-f197.google.com with SMTP id d8so11814360ilo.1
 for <usrp-users@lists.ettus.com>; Sat, 23 May 2020 13:07:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=LLc+N5YwME8I67aqXPIePSO5b2udi1LqxkH90AIb870=;
 b=nbSRB14EoJRYY9MVbmsjHjR/dfaTYdwPVt/HbkMmUROIBO44YkNogJw7+mfObCxivy
 yw6a5G1jIGQDRMh14DOsTqwAHUJBYM+fiBxUeqAKUWqaUY7xjgXZ3xeR8RcfgACQA4s3
 fjIw3cpByV+eU3/6kuPugBfZc6FxBOmsoLnr8epKbbQr2IEx8ZTRpNBff3v/3L1DsI04
 s/6UItkrB04PqtKZCCBisJXu1IiHg3L7FHkG6dCr46R9iR/vZoAOf0G2etvK/kg0pVt1
 CMyrkyvQhNyTxMn6MhsYGcyYVp5VT0sVFr5ojsshWBVdnYoehLf9d3yL/tKwXpvP7u1l
 R2QA==
X-Gm-Message-State: AOAM533nX/UNnPiy3YMB+2CfjmAwbN61pC17YQVoF5PBia19sNg0/jit
 JzuNMtoOGM0KpQXdDviTXA1EmDA9WMClvrpc6UWPO/1LQ28o9u4wEheT9G5CSaSWYEtSXAZe86b
 P806/4Zn/bMgDCNNEGPg1iCaasX5iUPnWAAtUkSymHO2c
X-Received: by 2002:a05:6e02:e8c:: with SMTP id
 t12mr18485062ilj.186.1590264441237; 
 Sat, 23 May 2020 13:07:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzqL3tU+BHACAZzUnpC+9NKkpZTz0KympYImcWojVedJQWTia3APwpHnsp8SGE4ev8mnZUo5eS4N++JaHFiCJY=
X-Received: by 2002:a05:6e02:e8c:: with SMTP id
 t12mr18485030ilj.186.1590264440702; 
 Sat, 23 May 2020 13:07:20 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 23 May 2020 21:06:45 +0100
Message-ID: <CAGsYvigK0JxvLpC38m-tdf6YPS1uPYaBO0wBAUYbbW+ES2c2-A@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-CU-OB: Yes
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-23_11:2020-05-22,
 2020-05-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=10
 priorityscore=1501 mlxlogscore=816 clxscore=1011 spamscore=0
 impostorscore=10 suspectscore=3 cotscore=-2147483648 adultscore=0
 lowpriorityscore=10 malwarescore=0 mlxscore=0 phishscore=0 classifier=spam
 adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005230164
Subject: [USRP-users] Rounded FFT on USRP N210
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
From: Manav Kohli via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Manav Kohli <mpk2138@columbia.edu>
Content-Type: multipart/mixed; boundary="===============8613760075347679724=="
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

--===============8613760075347679724==
Content-Type: multipart/alternative; boundary="000000000000165f7e05a6564bef"

--000000000000165f7e05a6564bef
Content-Type: text/plain; charset="UTF-8"

Setup details:
USRP N210 w/SBX daugterboard
UHD 3.14
GNU Radio 3.7
Ubuntu 16.04
gr-digital GNU Radio OFDM blocks used

While attempting channel estimation for 64-subcarrier OFDM, I find that for
higher bandwidths, such as 20 MHz, the channel estimate shows the edge
subcarriers anywhere from 15-20dB below the central zero subcarrier, even
though the anticipated channel is relatively flat.

Taking a larger FFT of the entire received OFDM packets shows the same
rounding as seen in the channel estimation. This rounding is roughly
symmetric, and occurs with any carrier frequency used.

It was suggested to me that this may be caused by the antialiasing filter
on the SBX board, and any further help/advice would be greatly appreciated.
Is such rounding normal, and if so, how could it be compensated?

Much thanks,
Manav

--000000000000165f7e05a6564bef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"color:rgb(0,0,0)">Setup det=
ails:</div><div style=3D"color:rgb(0,0,0)">USRP N210 w/SBX daugterboard</di=
v><div style=3D"color:rgb(0,0,0)">UHD 3.14</div><div style=3D"color:rgb(0,0=
,0)">GNU Radio 3.7</div><div style=3D"color:rgb(0,0,0)">Ubuntu 16.04</div><=
div style=3D"color:rgb(0,0,0)">gr-digital GNU Radio OFDM blocks used</div><=
div style=3D"color:rgb(0,0,0)"><br></div><div style=3D"color:rgb(0,0,0)">Wh=
ile attempting channel estimation for 64-subcarrier OFDM, I find that for h=
igher bandwidths, such as 20 MHz, the=C2=A0channel estimate shows the edge =
subcarriers anywhere from 15-20dB below the central zero subcarrier, even t=
hough the anticipated channel is relatively flat.=C2=A0</div><div style=3D"=
color:rgb(0,0,0)"><br></div><div style=3D"color:rgb(0,0,0)">Taking a larger=
 FFT of the entire received OFDM packets shows the same rounding as seen in=
 the channel estimation. This rounding is roughly symmetric, and occurs wit=
h any carrier frequency used.=C2=A0</div><div style=3D"color:rgb(0,0,0)"><b=
r></div><div style=3D"color:rgb(0,0,0)">It was suggested to me that this=C2=
=A0may be caused by the antialiasing filter on the SBX board, and any furth=
er help/advice would be greatly appreciated. Is such rounding normal, and i=
f so, how could=C2=A0it be compensated?</div><div style=3D"color:rgb(0,0,0)=
"><br></div><div style=3D"color:rgb(0,0,0)">Much thanks,</div><div style=3D=
"color:rgb(0,0,0)">Manav</div></div></div>

--000000000000165f7e05a6564bef--


--===============8613760075347679724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8613760075347679724==--

