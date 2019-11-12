Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B93F970C
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2019 18:25:07 +0100 (CET)
Received: from [::1] (port=50260 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUZuc-0005XE-2g; Tue, 12 Nov 2019 12:25:06 -0500
Received: from mail1.bemta26.messagelabs.com ([85.158.142.3]:60672)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Joern.Skorstad@Nkom.no>)
 id 1iUZuY-0005Of-Sl
 for USRP-users@lists.ettus.com; Tue, 12 Nov 2019 12:25:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=s1;
 t=1573579461; i=@nkom.no;
 bh=wgoM86Cy2162r7wo7f/Tx8ofHWgVZPya0kQkfQ71LUc=;
 h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
 Content-Type:Content-Transfer-Encoding:MIME-Version;
 b=tEkRq83ud70CHECMxFSps32/snogRI1lQjl4b78kjoYzngvPX30eTI4Fz3gFyo1ys
 A4uPPVA+nZOC9Ol5xCIB6YTGo3+Z/C6BpZMK9wfrPRRuEDzD+uEpy0hi2G/lPgvUtY
 caEuNFUaej65OoeI+Wxx0mltHcGRjdRGFD+XGoaIAYdRPVfGHeLxpClUZlTz6yerFk
 k1k9A5wLw6spGiy//omG3Z6593akmj1XtMMIkIuctwU4uU4OzxOS4ltAkOHxEV2IPp
 b8tignOv+Mk8TrPTXehva7DiSOjW05d4d4SWdDT+/0Wffw8zsovz98K8jZsEkVacWD
 j4vcMqT2ib0gg==
Received: from [85.158.142.100] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-3.bemta.az-a.eu-central-1.aws.symcld.net id CA/42-23277-4CAEACD5;
 Tue, 12 Nov 2019 17:24:20 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIKsWRWlGSWpSXmKPExsViF5OXq3vk1al
 Yg/s/tSxO79nCYnGhcw67A5PHzFNb2D0mrjzEHMAUxZqZl5RfkcCacXTJPOaCewIVWzaeY29g
 XMPXxcjFISTQwijR/e4nWxcjJwebgLPE7yWfmEFsEQF1ifurmxhBbGYBW4lZH1cxgdjCAloSW
 46+Y4Wo0ZZY/vQ2C4RtJbGjazNYnEVAVeLzoR1gM3kFXCTaL55jh1jWzChx+sUdsASnQKDEk0
 s/gGwODkYBWYm5TbwQu8QlZhy9AzZTQkBAYsme88wQtqjEy8f/WCFsK4nnJxcwQdiaEkcudEL
 VK0ic23qGDcKWl9j/cgozxEwDiffn5kPZ2hLLFr5mhrhNUOLkzCcsExjFZiFZPQtJyywkLbOQ
 tCxgZFnFaJFUlJmeUZKbmJmja2hgoGtoaKxrrGtmqJdYpZuol1qqm5yaV1KUCJTUSywv1iuuz
 E3OSdHLSy3ZxAiMvZRCZtsdjGffv9U7xCjJwaQkynvz0qlYIb6k/JTKjMTijPii0pzU4kOMMh
 wcShK8PM+BcoJFqempFWmZOcA0AJOW4OBREuG9+QIozVtckJhbnJkOkTrFqMsx4eXcRcxCLHn
 5ealS4rx3QIoEQIoySvPgRsBS0iVGWSlhXkYGBgYhnoLUotzMElT5V4ziHIxKwryKL4Gm8GTm
 lcBtegV0BBPQES2HwY4oSURISTUwzSudN1sk6vVT07NCXM7Xk5eEb4m4y3z2+XLR2W587DNzW
 nnZXf4cqlkZvfGlWsVHtsI5y091Knn2e356FBA8affy8MhWFeEjF+RuR/I5yswNlz7jZqF875
 NPdNO5WeZq73w2fVg4saegbG7CVM/H/E2PFs2ovX1z3VXtnuJrBxkCN6y/qpT1XvaiH1PMg7c
 mh84uX3uldG3z8tt5DP+KdcLfzxA+9Ta67LPO8vtrWW880Jx2aE3+k3V851ym+q00C9rsE9md
 yLv3o95drjk1LlN08z+cMFHb9bp02pslUn9zVcLmzBLZFaehtzxySVm5pXWgIG8AyyM5oZ7Wy
 Afpp+6WHLCtXLNAc979J9k8tUosxRmJhlrMRcWJAG+zwoDEAwAA
X-Env-Sender: Joern.Skorstad@Nkom.no
X-Msg-Ref: server-16.tower-225.messagelabs.com!1573579460!289711!1
X-Originating-IP: [62.92.110.109]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.44.22; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 4984 invoked from network); 12 Nov 2019 17:24:20 -0000
Received: from 109.110.92.62.static.cust.telenor.com (HELO smtp.nkom.no)
 (62.92.110.109)
 by server-16.tower-225.messagelabs.com with ECDHE-RSA-AES256-SHA encrypted
 SMTP; 12 Nov 2019 17:24:20 -0000
Received: from EXMBX01.npta.no ([10.10.2.97]) by EXCAS.npta.no ([::1]) with
 mapi id 14.03.0468.000; Tue, 12 Nov 2019 18:24:18 +0100
To: Nate Temple <nate.temple@ettus.com>
Thread-Topic: [USRP-users] E310 RFNoC image
Thread-Index: AdWZLCnHsJoqHaTiQkOJ5gEZ7l9tRgARZUaAAAMRPSw=
Date: Tue, 12 Nov 2019 17:24:18 +0000
Message-ID: <6647c899-4322-4059-b9d7-bf69ead4dedd@email.android.com>
References: <D71B2B9BB39CE44CACCAB6646DF20CFD48DAD5A8@exmbx01>,
 <CAL263iyu=4WX8SpPUUu1ue+-sjsZUM0rvZVnd+taOJx9x8GC_Q@mail.gmail.com>
In-Reply-To: <CAL263iyu=4WX8SpPUUu1ue+-sjsZUM0rvZVnd+taOJx9x8GC_Q@mail.gmail.com>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-as-product-ver: SMEX-11.0.0.1251-8.100.1062-25038.003
x-tm-as-result: No--15.084200-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: [USRP-users] E310 RFNoC image
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
From: =?utf-8?q?Skorstad=2CJ=C3=B8rn_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?Windows-1252?Q?Skorstad=2CJ=F8rn?= <Joern.Skorstad@Nkom.no>
Cc: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

Thanks Nate, I will try to install it as described below.

Jorn

12. nov. 2019 17:55 skrev Nate Temple <nate.temple@ettus.com>:
Hi Jorn,

The process for installing Xilinx Vivado WebPACK is fairly easy.

Download "Vivado Design Suite - HLx Editions - 2017.4  Full Product Install=
ation" from here:

https://www.xilinx.com/support/download/index.html/content/xilinx/en/downlo=
adNav/vivado-design-tools/archive.html

Decompress the tarball

Run "sudo ./xsetup"

When prompted to download the latest version, ignore and click "Continue", =
2017.4 is required.

Click Next, and agree to the EULA and other terms, click Next and keep the =
default /opt/Xilinx install prefix.

Click next through the rest of the menus and "install"

You'll now have Vivado installed to /opt/Xilinx/Vivado/2017.4 and can use i=
t with the build tools as described in the previously linked app note.



Regards,
Nate Temple

On Mon, Nov 11, 2019 at 11:56 PM Skorstad,J=F8rn via USRP-users <usrp-users=
@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi list,

I have followed the application note https://kb.ettus.com/Software_Developm=
ent_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Sourc=
e to set up a cross compile environment for an E310 SDR. It works well, how=
ever I have not been able to get past chapter 7: Building a custom RFNoC FP=
GA Image, as I haven=92t set up Vivado 2017.4, as required.

I would like to experiment with RFNoC development also. The application not=
e states =ABA future application note will cover a step-by-step install gui=
de for Vivado=BB. Until this application note is ready, is it possible to u=
se an image built by someone else using this software version? (UHD_3.14.1.=
HEAD-0-gbfb9c1c7). If so, where could I eventually download it? What I need=
 is 1xwindow, 1xFFT, 1xFIFO and 1xFosphor if there is space left. Radio and=
 DDC is already on FPGA available as blocks?

Regards,
Jorn
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
