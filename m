Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 273D41815D
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 22:56:29 +0200 (CEST)
Received: from [::1] (port=45534 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOTc0-0008WB-5r; Wed, 08 May 2019 16:56:24 -0400
Received: from ppa02.jpl.nasa.gov ([128.149.137.113]:58150)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <lorenzo.minutolo@jpl.nasa.gov>)
 id 1hOTbS-0008Fv-KK
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 16:56:20 -0400
Received: from pps.filterd (ppa02.jpl.nasa.gov [127.0.0.1])
 by ppa02.jpl.nasa.gov (8.16.0.27/8.16.0.27) with SMTP id x48KoA6b084229
 for <usrp-users@lists.ettus.com>; Wed, 8 May 2019 13:55:09 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jpl.nasa.gov;
 h=from : to : subject
 : date : message-id : content-type : content-id :
 content-transfer-encoding : mime-version; s=JPL1810;
 bh=SiFtcbUEWDRCnqitWykfi/3Gqh5GlMW3WoZ0HiXHvdM=;
 b=X+90eKrFVx5T++8zyLhfcmVVcpo602jIeKsiTNmM4jugJtYJtCT1KqSE/a4JX+qBLZIo
 8v0Icc98VgW1tv78OkJ4esoohsVsG6YTnEGqg91prwr6G/hJZJaZOl72z4MaiGC4HxYb
 Oq4IdpkEXLwMH37SoXdFAzhPpF/KUbNk/An4Jpj9M+ykLCuHFviUDHQIHw/1I4hVfIzl
 T6oYpc82nohZUxeSSBg9fX0ypOA+ApaNlYe37E5dm75iR+WgpcGkH2J3IxuSrJ117rMs
 4tDz0dYPrBp1hQZOY+Lhd1ICNcWiTmCbISyq4Ax2XzqaLJatc8zobWjMx8YYRr3v2XnZ nw== 
Received: from mail.jpl.nasa.gov (altphysenclup02.jpl.nasa.gov
 [128.149.137.53]) by ppa02.jpl.nasa.gov with ESMTP id 2sbs302k59-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 13:55:09 -0700
Received: from ap-embx16-sp10.RES.AD.JPL (ap-embx16-sp10.jpl.nasa.gov
 [128.149.137.83])
 by smtp.jpl.nasa.gov (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.1) with ESMTP id
 x48Kt8l4026784
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128 bits) verified FAIL)
 for <usrp-users@lists.ettus.com>; Wed, 8 May 2019 13:55:08 -0700
Received: from ap-embx16-sp30.RES.AD.JPL (2002:8095:8955::8095:8955) by
 ap-embx16-sp10.RES.AD.JPL (2002:8095:8953::8095:8953) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Wed, 8 May 2019 13:55:08 -0700
Received: from ap-embx16-sp30.RES.AD.JPL ([fe80::ec3d:4aec:4990:1f68]) by
 ap-embx16-sp30.RES.AD.JPL ([fe80::ec3d:4aec:4990:1f68%13]) with mapi id
 15.01.1591.008; Wed, 8 May 2019 13:55:08 -0700
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP N320 and N321 questions
Thread-Index: AQHVBeBRBEJbVsdQ3UyuEp00QOSPng==
Date: Wed, 8 May 2019 20:55:08 +0000
Message-ID: <B00A224D-E7A3-4053-9E56-BC44A01A9522@jpl.nasa.gov>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [207.151.104.72]
Content-ID: <BB3DA6567B193043AEBC9712599F1239@ad.jpl>
MIME-Version: 1.0
X-Source-IP: ap-embx16-sp10.jpl.nasa.gov [128.149.137.83]
X-Source-Sender: lorenzo.minutolo@jpl.nasa.gov
X-AUTH: Authorized
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-08_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=619 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905080127
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] USRP N320 and N321 questions
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
From: "Minutolo, Lorenzo \(389I\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Minutolo, Lorenzo \(389I\)" <lorenzo.minutolo@jpl.nasa.gov>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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

SGksDQpJIGhhdmUgc29tZSBxdWVzdGlvbiBhYm91dCB5b3VyIG5ldyBwcm9kdWN0cy4NCg0KMSkg
V2hhdCBpcyB0aGUgc3VnZ2VzdGVkIGhhcmR3YXJlIGZvciBjb21tdW5pY2F0aW5nIHdpdGggdGhl
IFFTRlArIHBvcnQ/IEFzIEkgdW5kZXJzdGFuZCB0aGlzIGEgbm9ybWFsIDQwIEdiaXQgUENJZSBj
YXJkIHdvbuKAmXQgd29yay4NCg0KMikgRG9lcyB0aGUgZW1iZWRkZWQgbGludXggc3lzdGVtIGdp
dmVzIGFueSBlcnJvciB3aGlsZSBoYW5kbGluZyB0d28gY2hhbm5lbHMgYXQgMjAwTXNwcyBmdWxs
IGR1cGxleCB3aXRob3V0IGFueSBzaWduYWwgcHJvY2Vzc2luZyAoaS5lLiBiZW5jaG1hcmsgcmF0
ZSk/DQoNCkxvcmVuem8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tCg==
