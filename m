Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1062727618
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 08:37:25 +0200 (CEST)
Received: from [::1] (port=36222 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hThLr-0002RU-Tu; Thu, 23 May 2019 02:37:19 -0400
Received: from mail-ed1-f41.google.com ([209.85.208.41]:33022)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <vladicasark@gmail.com>)
 id 1hThLJ-0002M2-Sa
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 02:37:15 -0400
Received: by mail-ed1-f41.google.com with SMTP id n17so7623542edb.0
 for <usrp-users@lists.ettus.com>; Wed, 22 May 2019 23:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=cenC7BUbYV/kIon0DZLfrkgaIzYHVbUWlBL60O/c6xk=;
 b=g7f/sPQrLzpVmvf9r3XX6/8ffHD/nD43Qj/cA04m6C73ISgxXbLE0s9/5B/CWVoUPR
 f7c93dcLdoZgoZhQG1H+sES2zWq0ALq4ia6lcuaeqT8LalneD2rZhSpMRvXendqenLvS
 dhffiDZCa1k5oz9HB1Y2E4NgGAq4QMKt1lo8oBM5id+z3Om4Qijh7DznNbxTBTBK+mjt
 QWRTzyDnFEsvyddqSjFdyoLkOKioKoqaHBubJs9w+XbHp2mpx3UqUU7JQ2zuOvVUhCTU
 aR1k+n/qUMibIf3J4V3nZa1inj9VmjwngKXkeB0W+UoY+gdcLpzAOAjxERJefVr2069d
 UlEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=cenC7BUbYV/kIon0DZLfrkgaIzYHVbUWlBL60O/c6xk=;
 b=W3H+x8LGVZ72rVD7OeHlGSDJgMGVRkRl2suIVDG6Ee19Q4z/Limx1pvWkp9/XJqiuT
 ii0+HKcWxyNkspXdY3FSYuC06TAyIMT596ZToLj6A4PjMcc7wvkWc/9w1dxXP1qbw4tB
 aVO9xaU1DDv7stoFQbpJlaUF2O9qj2qnVd4RhQxnhzb0+CMnLt0sTeh4dwE8FlpFrroF
 2fuetow3z2uT6oVe2P1mld85llVoAy/MI7IYJszaUiAxhjsLC92NBe+wZybUdHG/LgCX
 w97jSDJMdypxbG8UnTZ94jvqr0VmjzFQatVg7KIq8qyOKqQp6L7B4rU8FN0zxcflrlts
 Zf0A==
X-Gm-Message-State: APjAAAXb0tfxz1bPGxd2t3UJ2yKIkgUwf3UIDsXdpd2MnQTP45ze5yqH
 +P8pdyoBSOLIuKSbnzV+9S2T1oQq
X-Google-Smtp-Source: APXvYqx1gQcuI6T/2S6ILfR3js/I4P/HLlSHX2jH8/NQhhDFGqE2q2wLp0Ok10iGuwVjTBapbc2BFg==
X-Received: by 2002:a50:b6cf:: with SMTP id f15mr94504068ede.192.1558593364542; 
 Wed, 22 May 2019 23:36:04 -0700 (PDT)
Received: from [141.20.182.171] ([141.20.182.171])
 by smtp.gmail.com with ESMTPSA id b53sm6962550edd.89.2019.05.22.23.36.03
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 23:36:03 -0700 (PDT)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <e83f1284-23a4-ac57-8943-993b9d6201b5@gmail.com>
Date: Thu, 23 May 2019 08:36:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Multiple TX streams
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
From: Vladica Sark via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Vladica Sark <vladicasark@gmail.com>
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

Hi folks,

I have 2x X310 connected to Octoclock (10 MHz + PPS), each with 2x UBX 
frontends. I control them from a C/C++ program. Since there are 4 
channels, I create 4 tx streamers in order to transmit timed samples on 
each of them. The transmissions are not at the same time and this is the 
reason for using 4 tx streamers. The problem is that when I schedule 
timed transmissions on all of the channels (at the same time for test), 
sometimes I do not get anything with recv_async_msg, i.e. the timeout 
expires. This also happens even when I schedule only a single 
transmission from single tx streamer (all 4 streamers are created).
Sometimes it happens that everything is working without problems, i.e. I 
make 200 transmissions on each of the channels and I get the proper 
response from the recv_async_msg, but many times, restarting the same 
program leads to just recv_async_msg with expired timeout. I am using 
UHD 3.13.0.

I can probably use one streamer and transmitting 0's on the rest of the 
channels, but I would like to avoid LO leakage in the air.

Best regards,
Vladica

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
