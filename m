Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5D812111D
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2019 18:09:00 +0100 (CET)
Received: from [::1] (port=42872 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1igtrY-0005LP-U1; Mon, 16 Dec 2019 12:08:52 -0500
Received: from mout.gmx.net ([212.227.17.22]:48347)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1igtrW-0005Hx-3H
 for usrp-users@lists.ettus.com; Mon, 16 Dec 2019 12:08:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1576516088;
 bh=/8TI0tQnFR1oIS+s5FNqq7YkUyyqTbpCyRLgj+MIo2g=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=csHMKJTS54+z+OWVNAVy/9u1Scj8x6W74VK/5XaYYy9TFWziIhay1kxtYrii6wGp7
 v71o8LSCZ8DAGdEDtra6cAUuB3eeyvMlh3cB7273XmnX6grXeK0aKjW9hHgSSnz0G1
 SWO/uMIXv7hR7pZWkQX/aV/swsKaSTpC+AZkyw7M=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bap63.server.lan [172.19.172.133]) (via HTTP); Mon, 16 Dec 2019
 18:08:08 +0100
MIME-Version: 1.0
Message-ID: <trinity-88a878c2-c71a-4ced-a774-012a0c505ff1-1576516088747@3c-app-gmx-bap63>
To: usrp-users@lists.ettus.com
Date: Mon, 16 Dec 2019 18:08:08 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:BAdjbilsEqovm03YgDrXRGyKEE2hoFTunhAQOdUjB9fd7XHK5i1ySKQdhJHHeRx0TncU+
 lEk6MH+arYSDwesfZPu8q0jdCkc103yb5Foar9K/naRgsILiIkApnh4GzbTcNts49RRQfEvFyEzu
 xytjb7F+ssUUmyL8zzwBuhMBakUesAN4O7Z0yKsljfZpDfB09YNdw6RKZpkLq84DqLB2IScPws2I
 Y4CXgVxLsGZn2g/EIjtblarBFveMOyRtyL3CyyFKQLOoguHYLDciuUrKHJknZrNUCofNUbapMD2E
 tw=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dET3KV7RGEM=:GiD+20/mfTcusAc1EBfbfa
 DFoxpMaiplkio19WqPAiug/td5IBzqfiHL3RpMWRsBJXYPHud+EkFUZ62P4hayWVAjetf99LI
 kYkfrdkCSAWqKkK3NuzzB/IH5eW9wWMjIpj23rn/ZOzdlzCails/Pfy/Cag13QMhS5Xe9FQke
 W1YEGy9sJDcT4kMRxhVyjUSc12dthUhQBVOdec7jIs1IIrK9z21eWO8F/VzpA++qSTkMW+Gq/
 Op0DgXKENTnCvKo4ow5w0tj/ZsLBZ1xkzlvTRY0yrpa6BhfOTD1/bKOInH55OGqZGLaw8sGK3
 0GarQbb9q8OU9sJniDkpbuBIW99cg4RJukKBG8RvS7MxSm+z8IOUuDM4it7DoFZB6d577Mgjt
 PDV99B0sAc7t37h5dKJftYpe8Bo0tPbnGOZJxtKn65aQo6FIp3Q9WcZVjIdKIAB8ZpYavrZtB
 6XMuOfU+D/q1om7zisvjTd0onAqC3AOcF++sgaAH/76Ov6bJPB8EBeg+wJSLIY8USR1qD8xyB
 FAxQMxLqqI/9JOs0BeD+nsrCu0merj9HdC8itRkc5Uzh8m60+KvqUwCuS+MrEnpLLzuqjhvKt
 iNKvGDZUrvH5438G8P1rPxYW46SEt0CVhh6mMOeBLkGnyol/NMS84j3YzZJxhHxUIW9A4+qqf
 KtEzBNnulJj7SmlTU8dnL+vFEE2xrJBlhLiy+t0Er5Fh3/w==
Subject: [USRP-users] USRP Source generates more tags than expected
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
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

Hi,

According to the manual, USRP Source generates tags whenever settings change (e.g. center frequency). I would like to use this for my frequency hopping system: A python code regularly changes the center frequency of the USRP Source (and Sink) block and then I use "rx_freq" tags to detect whenever a switch happened and patch together a packet.

I need to convert the sequential data due to hopping to a "parallel" data: For example, I hop between three frequencies than after the last frequency, I need to process the data for all three frequencies. Hence I need to know when the different switch occured.

However, using the "Tag Debug" block I see that for each tune request 6 tags are created. For example:

----------------------------------------------------------------------
Tag Debug:
Input Stream: 00
  Offset: 14537796  Source: file_meta_source0     Key: rx_freq   Value: 1.85e+09
  Offset: 14537796  Source: file_meta_source0     Key: rx_time   Value: {1576453289 0.0988063}
  Offset: 14537796  Source: file_meta_source0     Key: rx_rate   Value: 5e+06
----------------------------------------------------------------------

----------------------------------------------------------------------
Tag Debug:
Input Stream: 00
  Offset: 15537796  Source: file_meta_source0     Key: rx_freq   Value: 1.85e+09
  Offset: 15537796  Source: file_meta_source0     Key: rx_time   Value: {1576453289 0.298806}
  Offset: 15537796  Source: file_meta_source0     Key: rx_rate   Value: 5e+06
----------------------------------------------------------------------

----------------------------------------------------------------------
Tag Debug:
Input Stream: 00
  Offset: 16537796  Source: file_meta_source0     Key: rx_freq   Value: 1.85e+09
  Offset: 16537796  Source: file_meta_source0     Key: rx_time   Value: {1576453289 0.498806}
  Offset: 16537796  Source: file_meta_source0     Key: rx_rate   Value: 5e+06
----------------------------------------------------------------------

----------------------------------------------------------------------
Tag Debug:
Input Stream: 00
  Offset: 17537796  Source: file_meta_source0     Key: rx_freq   Value: 1.85e+09
  Offset: 17537796  Source: file_meta_source0     Key: rx_time   Value: {1576453289 0.698806}
  Offset: 17537796  Source: file_meta_source0     Key: rx_rate   Value: 5e+06
----------------------------------------------------------------------

----------------------------------------------------------------------
Tag Debug:
Input Stream: 00
  Offset: 18537796  Source: file_meta_source0     Key: rx_freq   Value: 1.85e+09
  Offset: 18537796  Source: file_meta_source0     Key: rx_time   Value: {1576453289 0.898806}
  Offset: 18537796  Source: file_meta_source0     Key: rx_rate   Value: 5e+06
----------------------------------------------------------------------

----------------------------------------------------------------------
Tag Debug:
Input Stream: 00
  Offset: 19537796  Source: file_meta_source0     Key: rx_freq   Value: 1.85e+09
  Offset: 19537796  Source: file_meta_source0     Key: rx_time   Value: {1576453290 0.0988063}
  Offset: 19537796  Source: file_meta_source0     Key: rx_rate   Value: 5e+06
----------------------------------------------------------------------



I expected only one. Why are there six of them?


Thanks,
Luke





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
