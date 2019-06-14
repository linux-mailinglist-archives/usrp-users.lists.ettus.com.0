Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FA945092
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jun 2019 02:32:46 +0200 (CEST)
Received: from [::1] (port=46856 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hba8z-0004W6-6r; Thu, 13 Jun 2019 20:32:37 -0400
Received: from sonic306-24.consmr.mail.gq1.yahoo.com ([98.137.68.87]:45481)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hba8v-0004Rf-25
 for usrp-users@lists.ettus.com; Thu, 13 Jun 2019 20:32:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1560472311; bh=9gmMMfWuZcEyqxAKWOCN9wSe5wUCBlomYXv48a+6gdg=;
 h=Subject:From:To:Date:From:Subject;
 b=kWXWb8PyxuW7Ua1UgBEQTQw/VFPmPRkrE7MmvlNhnHZNijkQaVfIw+a+o5/TyiYoIU4vb8j7032dtXF5FqZBYTDjhWKmhuxI17YBnTKYs92U7pJNhqVPZpveuVY17iYlqLDlnQIkHrJulsli2SRf7vHk1mnLna8KTbx+NbIrZYmqPbflPgEmwwW6buoDedgQSXdYI9m1HWUFe1Gwv0LY422QFF4YMRmPn5Rs+7bdR+E+5vrTN8RZ8t45TGapvIOeoeSuY2/+2eyFG3S9gPn+u/r1Evkf9cLtKF96TWaKwdjTC5z6laOypm2KIgFJHdzrO5XddywBokwzeKrKvrWjqw==
X-YMail-OSG: fy7eeYQVM1nrDi7dgwFDhpg5akHpd2GvrsEPipjwGgRzYPvXpphVbqXyoxXw5Tr
 yMMYbfIqmWkJWH6wfrf9OJGPxgWmOHS2fhuQWwBYGiotFaCFBD97hSaM1TbDJiZQeLmf8QFqYNVD
 lNnT3ltjFq35JAYOVYLnJuJc__ArYT.pg1O16bs2zsLKVelgP4HIj5e0Y0a0WmnpS.MFiDr35Tt5
 bImSpoJZepu5PBNx4fD.JSpGub1cckQVAZ9AvXBihEeTI2B19dt.nnneIBmwsCdvs25VkbBeNpvz
 j2oXE3Flbuc7VVGqSFk0TdYpl1KTxdHrY4THiiUNHrP3sVmZH9izXDCeSyOTdwRSP5bP1K.1wIEJ
 JfVxjK43ycWLTh9FLP.8Oj0kmK9mcPnDZWcgpiMUcFX0c32RRyt1OtpPocgYf2wmj2Kk7UqTfRl8
 bT8eL6quWEg7J6cKwJaCGpM2.HWFjVhqAaPuAzif.Ht9l4tGjc7YQ6EeWo048Al3eVpt4n9v.Hg8
 ddnZihy4t4VcP4Ee__5.wAFJtXe45OoaPdzwXCFeTPimVaeKqvzTR70qOJRThUMYEu6MuEunK1ua
 uLfieTfWcn.7tfyZvL.Y0EhScNhSMz9VI3FfWmIjNM0XJ5WCUOlDHyM4TdTBRAbiqzo_vTLMJBYD
 zMNVPbJLWuBT_rL0sxDoPcR0zSnA91aGSq3K5I5xFI4dACLJ7rbedK3EUjLx94XmlCLHhFH986hU
 tAubvf3T8Brua2.Z6yzT7Iwkawtsd3w7qPpOsXTHqJAcMXod8KB2n0trEUyItJ0fWl49kblb6acz
 JvTQyodusDP7J7M3J9dBB3oldcJ0N9K6QWNv80rLfsgrBkWqHBtTMv6HcSAo_Ii_yZ6bdwq69h3q
 2V987yisU5UyPxymlWDQsg12Za3FbRGOCg4DWlMdVwVAIiw5a1tBmmLntZrUdCxS5MZozAetv.1u
 9UvBQHF0nSUyf.DpE83pR0B8cUe01SCkvN_LPx54yKpdyauKpxpI3NFi9x5OcuXBgAeERWd.rUdd
 8CjXgtXA.yiGKrlnclXhjz5Kd0v8eh8K5qkb9jEW4bXI6PMJogqD57TdUYROBzsPrqrQjUJARo5Y
 IpPpFEjXe_V3xalD2D3_xsrGd0CMOD5WYqx2g6TwgL9Gj4FEbo.Be.UN1GD3FFr62H_KSWPvEqA3
 fDJ7mx3foo9LkHE8Z3MWM4Js3zzrMX0lfzTwxq8EXJdPDl5yV11BWDw--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.gq1.yahoo.com with HTTP; Fri, 14 Jun 2019 00:31:51 +0000
Received: from 108-202-218-101.lightspeed.rcsntx.sbcglobal.net (EHLO
 Serenity2) ([108.202.218.101])
 by smtp422.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 849d7946de240e703a0fa0a43acabe29 for <usrp-users@lists.ettus.com>;
 Fri, 14 Jun 2019 00:31:50 +0000 (UTC)
Message-ID: <4897f22aa50169c2b788939c0c89f7bbf492dd6f.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Fri, 14 Jun 2019 00:31:49 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: [USRP-users] updated cross-compile toolchain for E310
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
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

can anyone provide guidance on finding or creating an updated cross-
compile toolchain for the E310? The newest one at 
http://files.ettus.com/e3xx_images/ won't build recent uhd because of
an old cmake and probably more.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
