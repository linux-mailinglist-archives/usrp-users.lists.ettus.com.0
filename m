Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 446B821CC30
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 01:43:39 +0200 (CEST)
Received: from [::1] (port=59670 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1juld6-0004nR-1y; Sun, 12 Jul 2020 19:43:32 -0400
Received: from mail-qv1-f43.google.com ([209.85.219.43]:45797)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <101science@gmail.com>)
 id 1juld1-0004ij-UF
 for usrp-users@lists.ettus.com; Sun, 12 Jul 2020 19:43:27 -0400
Received: by mail-qv1-f43.google.com with SMTP id u8so5046647qvj.12
 for <usrp-users@lists.ettus.com>; Sun, 12 Jul 2020 16:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:date:subject:message-id
 :to; bh=efDKyGKl1zdXTd2ejMhEbOjPAkQBz07Db7Dno8BcHt4=;
 b=Os1dO1Cm6/qb6w95MClGtf9Wqy1ekdoKzv3HJSFSz5ah7suYaFvGigBclkoUVZaSBK
 wX1dBVMqsk7C4PInRN8C7lFLQC15jgMbBqg6okKMLfZ2DOWFAT1hwzr+G1PCk/fq5Kpm
 DUburPOFsE4PaqwgKD7mFGqIUM2uvQLasE9wCREUZJBp25PNa0zoPVYs+JIWWO/wrtDT
 5vfVQWubO9erEhCYCDhNVFU1KWUFEkW3NAbR+gaZZrw19ubC/jm3y2QKRqzRwcyKto7a
 edgWqlHvWjfSrdKknXlakCoe06vaTNU5HJIojIfaa3bNhrR10eFN5swPpAnj35yUcGXv
 yzAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
 :subject:message-id:to;
 bh=efDKyGKl1zdXTd2ejMhEbOjPAkQBz07Db7Dno8BcHt4=;
 b=Mncrau+d4ZBuXTpd97NaQFiCrf7rklKIuudtIMIv3gRCFK62nUX/8CFixmBmnluA7i
 rORlYry7i1yqH9DaiVMIU48iZcorm5tC8VrsXKcIHuTVzrvK3b7JdgT11RK1BPQHoiFc
 /1j7zeLhKQWGJssZNzTg3WBRJzhribdRFSAFBnYyDxhTe/hvwgUGw2SyBjbGHKapcYft
 4R/vlGAoa6qyfHnSq4Lbd0Svn/Jzu4h3LkJrLcs44SvLXr+mVwYB5Z6g39kYVce1rqEq
 WjB9slYh2LLkCS6mZbuDamKZt0BVaDczadm7GwAeG/xHdLimP1w2kwBebzhaobXrBMnT
 0N+g==
X-Gm-Message-State: AOAM531bKDe/gVX7CuD4uFlVmFzhLpGnepazApEbNsUSaZrIt5s1AG3U
 R6laRlPTnX35uFqhAgABwQ4E7L7GNQo=
X-Google-Smtp-Source: ABdhPJzs4FxCTa0ZmOFCrCZIm1EnR+7pXuvehenwUxLGbVAYvlGi4ZSWdrW2lFCIqu9pS1WQiHq85g==
X-Received: by 2002:a0c:e048:: with SMTP id y8mr78342215qvk.11.1594597366978; 
 Sun, 12 Jul 2020 16:42:46 -0700 (PDT)
Received: from [192.168.1.18] ([207.89.11.117])
 by smtp.gmail.com with ESMTPSA id l1sm17203501qtk.18.2020.07.12.16.42.46
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Jul 2020 16:42:46 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 12 Jul 2020 19:42:45 -0400
Message-Id: <385E8FD5-A5AB-486F-A701-919B97328B40@gmail.com>
To: usrp-users@lists.ettus.com
X-Mailer: iPhone Mail (17F80)
Subject: [USRP-users] B210 GNU HF Spectrum Analyzer
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
From: Larry Dodd via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Larry Dodd <101science@gmail.com>
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

I need to set up a GNU HF spectrum analyzer with a waterfall using my B210, LNA, and LFRX daughter board. The target would be a 15 to 30 MHz (or wider) instantaneous spectrum for Radio Astronomy work. Rather than re-creating something that already exists where could I get a similar GNU flowgraph? Since I am brand new to USRP any advice is very welcome. 
Thanks,
Larry, K4LED 
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
