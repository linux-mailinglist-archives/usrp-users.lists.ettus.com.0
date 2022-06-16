Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE0B54D981
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 07:04:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B537F384611
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 01:04:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655355853; bh=VgOqY+c9ImBSlvA9gxeem8SFhDm3vANxi92NWc1OtNI=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=P7/+40qdUbz4lJpi8g7nb3CNLhrSTTtZ3Vm3Otuv8v64dP8dW9HE/2vqtWgWBZMfd
	 Log5laLiUFW/03ql6xyAaESmYslK2i9CAzLpIMAuTJIS7+hfVw/y0VYaAN8TdbZnsM
	 AAuNjNXODKJGeLMm1bo+UuPJIRRxHqojS4TcWXNwqQ+S8re5U0lZzUnagj4b7+XYsj
	 +A6MaABEt0koqD5jjXi5yLKK8/r83V4hgEDFWGUVv0uI2svEaBl9fnYYGQ6sYpt1Rt
	 l8Y9ns0el/yEYX55VWBKxw5GEgnH3PzUlFrosMmeHkwhnv2wSIJYm0vR9xhVci6wQ6
	 KaZqvubSvgpKg==
Received: from mail.discreteintegration.ca (ipagstaticip-f22d4c87-6b08-4bf1-098b-62dc6c4f1aa7.sdsl.bell.ca [142.116.40.93])
	by mm2.emwd.com (Postfix) with ESMTPS id 6537C3844A6
	for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 01:03:06 -0400 (EDT)
Received: from [192.168.5.5] (unknown [192.168.5.5])
	by mail.discreteintegration.ca (Postfix) with ESMTPS id 836117E0133
	for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 01:03:05 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.discreteintegration.ca 836117E0133
Message-ID: <22d579be-d594-698b-fc5d-576aceb3eab5@discreteintegration.ca>
Date: Thu, 16 Jun 2022 01:03:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: EID2NMPI6DO6GQ4LV2LU2FOQY7WPDZ62
X-Message-ID-Hash: EID2NMPI6DO6GQ4LV2LU2FOQY7WPDZ62
X-MailFrom: dominic.schaub@discreteintegration.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] TX port return loss limits? (USRP-2974)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EID2NMPI6DO6GQ4LV2LU2FOQY7WPDZ62/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Dominic Schaub via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dominic Schaub <dominic.schaub@discreteintegration.ca>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Please forgive me if this information is out there and I just happened 
to miss it. I have an application where I won't have a good match 
between one of the output TX ports on the USRP 2974 and the connected 
load . What is the maximum permitted reflected power? Can I go all the 
way to 20 dBm TX out with a short or no load? The RX ports on the other 
hand seem to have their maximum input powers specified (10 dBm) in the 
USRP 2974's datasheet. A pointer to the right place in the documentation 
would be much appreciated!

Dominic
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
