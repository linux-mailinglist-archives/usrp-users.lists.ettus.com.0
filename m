Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DFC6D5F97
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 13:54:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DB8438469E
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 07:54:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680609241; bh=sByhfE2DiQ34LEPoXa8kbwgRnlImnDjjow2838SL9+A=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=U6uBqZBjl6z8tfqNj0/hpklvQB0F3bykCVjdl03/btUmXGTBYi3xigKbyhVjXL4MA
	 i5t7KJl5Px+Y64o2d42a58u6nvkCqrIsrNbL1TP+Bv/rNodB29+RoydWd4tfPjSbj+
	 uajE/8iYhIeoaw8wsw+k0tTaaoe8dYIyByPqE6bEz+FcukP484debOe/JtRsa81sW3
	 gGC5JYzRF+RREP8/7aoWZ3Qc4Y+SShwddXyVGvaz3S4/2T2nHyWbfx/YwLYeKvhO+M
	 c6iOruvgnPXfo58Kqm3nIakBYs05EAbotad88J16AMP2Iv2r7l56NDZU1ndjOGM3Qv
	 zmydi6P1hS0kg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1AD5538485C
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 07:53:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680609208; bh=yL+cjz5EdM+VeJ/zS+b83AI/M4sENMUQv1nK5KOs6J4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=PUOCKwKEDQzivMEkiQOLLmcsyDQXQzKwuzI6whOflSH6EnQfzPdTJDz/OGoSvTmtn
	 m+Szo2FPJ80mMe8zlhfaF0CTLOn+B4fCKK4JWFpm9LvjLhCwodXdHytRBcmUgtopoN
	 V1LSH1aOF5ko5tJJtSLjnIgXo/2LxA5/oPSKHav/Vwpp+RYf5FXxx9A7psDoA24wOJ
	 9i/Atu8Yp+aHVlBciOOT7IOfSz4w9c9npEZqJi8GaG+dFBxyXJ0uyUlIYTYomqoskL
	 5Zhk/09lI0V8oi3hrvYfdXxn4hBx6zzs2wvqWtpk5s3PkR+VCKKiEz+hBnScoHygXh
	 XNoYlcv42gDTA==
Date: Tue, 4 Apr 2023 11:53:28 +0000
To: usrp-users@lists.ettus.com
From: christian.steffes@fkie.fraunhofer.de
Message-ID: <aOHKvOAs3rZJhP0xYmNODFEFsYXOscAKqLBwTkyGru4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: JmDGmOpUTKNkxEg7qyXGzKvMiVHpqGiBXJw6sRCA@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: JFZQ6KJSKKRX7B355IXAEOP2OZNRVHHR
X-Message-ID-Hash: JFZQ6KJSKKRX7B355IXAEOP2OZNRVHHR
X-MailFrom: christian.steffes@fkie.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rx_samples_to_file doesn't maintain the phase offset in different data acquisitions for X300 with 2 TwinRx
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JFZQ6KJSKKRX7B355IXAEOP2OZNRVHHR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2810948749316175492=="

This is a multi-part message in MIME format.

--===============2810948749316175492==
Content-Type: multipart/alternative;
 boundary="b1_aOHKvOAs3rZJhP0xYmNODFEFsYXOscAKqLBwTkyGru4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_aOHKvOAs3rZJhP0xYmNODFEFsYXOscAKqLBwTkyGru4
Content-Type: text/plain; charset=us-ascii

Alda suggested to set the frequency using timed commands. That did the trick for our C++ code. Thank you very much!

I posted the code snippet at [https://github.com/EttusResearch/uhd/issues/670](https://github.com/EttusResearch/uhd/issues/670 "https://github.com/EttusResearch/uhd/issues/670") in case someone else is facing this problem.

--b1_aOHKvOAs3rZJhP0xYmNODFEFsYXOscAKqLBwTkyGru4
Content-Type: text/html; charset=us-ascii

<p>Alda suggested to set the frequency using timed commands. That did the trick for our C++ code. Thank you very much!</p><p>I posted the code snippet at <a href="https://github.com/EttusResearch/uhd/issues/670" title="https://github.com/EttusResearch/uhd/issues/670">https://github.com/EttusResearch/uhd/issues/670</a> in case someone else is facing this problem.</p><p><br></p><p><br></p>


--b1_aOHKvOAs3rZJhP0xYmNODFEFsYXOscAKqLBwTkyGru4--

--===============2810948749316175492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2810948749316175492==--
