Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4A56A6DAB
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 14:59:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F31C9384809
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 08:59:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677679194; bh=Qx/s/budBs1HCRnWhV5OOkzbwre26YlHROXP5yTcTl8=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pKnSObv5R+g+tPo04FhVp9fFR9sgg4u0yHhUm/yTy9xvMfFXGF9Eoyd5L5nmoALDC
	 2UgRhGSma9pq4SpNb6CaQ+gYpe4m0O5Ae2hfDC/2/wq01v+zfJgGtP7OnriuCDOYsN
	 jwqCF63syhdmdiJw2VRAJ3qgxzFDMowSY0FIoektL4rXRSkUNPIfDiHKorVliYXrLN
	 139VBAvS6n9mi2xQf8lcEFIFGVnMe9qU7nzZKWiWEWbIcijGKffORYFcOhjHXf9Aox
	 4J4ERx2lcDGOkQ8owxU+tdwMEU6dAyKlGzfS0kb4os6EMI7XYWesY2InJkGfuyHqvL
	 /srJmTtT1uATg==
Received: from mail.femto-st.fr (lifc.univ-fcomte.fr [194.57.88.66])
	by mm2.emwd.com (Postfix) with ESMTPS id 49005383DD8
	for <usrp-users@lists.ettus.com>; Wed,  1 Mar 2023 08:59:21 -0500 (EST)
Received: from x230 ([194.167.45.227])
	(authenticated bits=0)
	by mail.femto-st.fr (8.15.2/8.15.2/Debian-8+deb9u1) with ESMTPSA id 321DxIlG017127
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 1 Mar 2023 14:59:18 +0100
Date: Wed, 1 Mar 2023 14:58:46 +0100
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID: <20230301145718.0d3da2c7@x230>
In-Reply-To: <CAEXYVK76azqDJCxcBx6pN53abV9ACic0EcC1MfHLWoTpaK84Xg@mail.gmail.com>
References: <PH0PR15MB4704FC8A1F2B068355FDEDC8E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
 <PH0PR15MB470475B739510FC1329965F2E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
 <CAEXYVK76azqDJCxcBx6pN53abV9ACic0EcC1MfHLWoTpaK84Xg@mail.gmail.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.35; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 194.57.88.66
Message-ID-Hash: O7Q2KGGAS5H7OQBM2IQX2JVUYP4CMU7C
X-Message-ID-Hash: O7Q2KGGAS5H7OQBM2IQX2JVUYP4CMU7C
X-MailFrom: gwenj@trabucayre.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Vermeulen, Bas (Consultant)" <Bas.Vermeulen@molex.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What do I need to do to make uhd_usrp_probe see my custom RFNOC module?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O7Q2KGGAS5H7OQBM2IQX2JVUYP4CMU7C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 1 Mar 2023 07:20:22 -0500
Brian Padalino <bpadalino@gmail.com> wrote:

> On Wed, Mar 1, 2023 at 5:40 AM Vermeulen, Bas (Consultant) via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> 
> > Just to answer my own question:
> >
> > Run uhd_usrp_probe with LD_PRELOAD=/usr/lib/librfnoc-module.so
> > uhd_usrp_probe and it will be able to find the RFNOC modules.
> > The same for any test programs you use, those need the LD_PRELOAD as well.
> >  
> 
> While this is a way to do it, I believe the preferred method is using the
> UHD_MODULE_PATH environment variable.
> 
> Set that to a location which contains all the .so files for any RFNoC
> modules, and UHD will load them automatically.  Note that if any non-.so
> files are in that path, you will get a warning about not being able to load
> the library.
> 
> Brian

/usr/lib is a default path for libraries.
Maybe using (as root) ldconfig to rebuild/refresh the cache used by the runtime
linker?

Gwenhael
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
