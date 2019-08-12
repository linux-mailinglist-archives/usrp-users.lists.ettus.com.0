Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5694F8A40F
	for <lists+usrp-users@lfdr.de>; Mon, 12 Aug 2019 19:12:02 +0200 (CEST)
Received: from [::1] (port=46366 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxDrQ-0002Z4-Fx; Mon, 12 Aug 2019 13:11:56 -0400
Received: from turquesa.dcc.ufmg.br ([150.164.0.150]:14794
 helo=smtp.dcc.ufmg.br)
 by mm2.emwd.com with esmtps (TLSv1:DHE-RSA-CAMELLIA256-SHA:256)
 (Exim 4.92) (envelope-from <oliveiramauricio@dcc.ufmg.br>)
 id 1hxDrM-0002HJ-PI
 for usrp-users@lists.ettus.com; Mon, 12 Aug 2019 13:11:52 -0400
Received: from webmail.dcc.ufmg.br (xisto.dcc.ufmg.br [150.164.0.133])
 by smtp.dcc.ufmg.br (Postfix) with ESMTPS id 73E7B7F99C
 for <usrp-users@lists.ettus.com>; Mon, 12 Aug 2019 14:11:10 -0300 (-03)
MIME-Version: 1.0
Date: Mon, 12 Aug 2019 14:11:10 -0300
To: usrp-users@lists.ettus.com
Message-ID: <bb626797d9459d98047616152b349dfa@dcc.ufmg.br>
X-Sender: oliveiramauricio@dcc.ufmg.br
User-Agent: Roundcube Webmail/1.3.1 
Subject: [USRP-users] USRP utility for spectrum analysis
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
From: Mauricio via USRP-users <usrp-users@lists.ettus.com>
Reply-To: oliveiramauricio@dcc.ufmg.br
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

Hi everyone,

I recently started using USRP for spectrum analysis and the 
rx_ascii_art_dft utility is very useful for that. I wonder if there is 
an easy way to output the (freq, dB) values to a text file? Or another 
simple program that can do that?

Thank you,

Mauricio

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
