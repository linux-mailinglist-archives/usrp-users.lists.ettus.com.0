Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C26AB4E2C
	for <lists+usrp-users@lfdr.de>; Tue, 13 May 2025 10:34:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 140C73860E0
	for <lists+usrp-users@lfdr.de>; Tue, 13 May 2025 04:34:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747125258; bh=p2mtiBVhSxGDJ0YmJ9W39J3LOZPrDaItsItnCWOT3Nw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=yMOJWrWrjZqmFT4xsT9xW7oWJ6zkswzPo16B0aflhqnBHHBzveyvTQGxoOxDepeVs
	 xyrzEm65iVCGK1N7CW0f8EZ80Kwo1dwtbp8/vV+LqVHhgh5yVznYsEMQ6NGvbNeyoh
	 FlOOpfqSv+ULCZEi5dBNIrXMt+zwSsmvNyy2G3veaMl67bMxsAJ58/9w4C3IJF1aR4
	 J+wOR7rUWfmhB4ddcV7p6anBjwKLrRc3QsdT0ZOMeE/faC6+jQBI7z3fEyDgyO4Fuj
	 /B1xU+tASoHheVtWLNWvR16JmTNTgnlIt+3bxCNqnwSi1klMUxKk9y4SI+jtlXqLmP
	 K9ZPDn8FYzeCw==
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 6BA133855D1
	for <usrp-users@lists.ettus.com>; Tue, 13 May 2025 04:33:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="juC7uHX1";
	dkim-atps=neutral
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54ea69e9352so7166725e87.2
        for <usrp-users@lists.ettus.com>; Tue, 13 May 2025 01:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747125212; x=1747730012; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=T6/OlCVdifYmN+pybFRRVkJLsem02ohqJysAHYvIWdU=;
        b=juC7uHX17k4FOr+r81dVQRZvgXZD/lG2JXsM/oDBh3OjLGUZarmiAuC3PdKJdfI/yi
         +IpX1OjgEFzaRQ1re5T1ulrDRcXhdsy8bc+KumvHGR4+5qP2//WLZQkOBjiYiaPv3jRu
         Jn7pWeBmI/o7HmyKw1sjc544uLJVsOSxHndvYMGozUOrvEGFrjj7KdVCS1kKXrsTF9m6
         zMKq0PDROUJBxMmHfUKeHGAH0EkwCFiPiHIKpR42faH25hw/aFulYkxr02Dj0EKz+B2Q
         Rny20lg+93r0PzJSWxGHHYgrCkzYexKnIw5Cid3nVYiTjlh8YLgwkeCnDw12M1hX36iB
         uxMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747125212; x=1747730012;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T6/OlCVdifYmN+pybFRRVkJLsem02ohqJysAHYvIWdU=;
        b=W7ebGrHx+uRuYlFZsgHsZAweQY3EX4BPezY9wDKvOLwr6MAJFRjPB76PiBAmhfsRdw
         XCbgqYIepJd+96BiY/tpW/MZxvPf1eNwjysEkQPPwVKxkFujJJk6qw/nN79pMBEaMx3z
         x62i8C72ajPcSqZJc6obytm7y31qjeHvDPiXxr3t3dJb8JxCQa7YsXhMpz7ttQk6U3TR
         KSA6CH2exxyLGjRqs+Q2rrXdCRyh9wEPo0wsafHhLiJEONb7BdhttKN+pbYIrAhpAyyj
         eVPFEnQBpQYpnr77YITRaWAQAh5zf8ST16UHvU8UdiuL0E9hoVRoYHRaq9ssqOGGuZQq
         4NXg==
X-Gm-Message-State: AOJu0YydIsx3+z8g0hNX600v/D3fBY6In51rxYZD8gheWTQ177fyr9YL
	gSmzwLEwiPBGgND7GsyewosBBZGHXfplR80bNAywyIpyyh38fY5Klb1kt7o7sppl4Z6+5ZkM5RY
	xPWyhK8442rApcVq1MBD/XFUKI+WgvLHB3fA=
X-Gm-Gg: ASbGncs21zONOoAjR9+pVmnsNssrVZsIrQITjiRGRYvrrqK3YWH0q8rnnLV+sY9I9V/
	DGOTxzi6d/x5bRIf9SwoUetNT5GJUgpHK4UMSdJcF176ttehuBSLZ6OsnuSlBbLRMrk2r4EbZ2Z
	qTe7Qk5Vfjx4NJLP4oGxLB3AjBjnK90Q==
X-Google-Smtp-Source: AGHT+IExKG5DIfHAYp78H+0Fi6BvNX2FkUongYD+Y1MS0OkRSAOlsQI1dFrwyLOPXTiMHkeqjJGYz7W3xPm+s2VqXyk=
X-Received: by 2002:a05:6512:238e:b0:54f:c638:ec6a with SMTP id
 2adb3069b0e04-54fc67e2346mr6049578e87.40.1747125211681; Tue, 13 May 2025
 01:33:31 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Tue, 13 May 2025 12:03:19 +0330
X-Gm-Features: AX0GCFu2rm1J4tPR4LKPxYHRySdEmWFFcwHUtzkj3NNlRFPXHTTpAKH31ZRD3Ok
Message-ID: <CAA=S3Puk1XCw+=7i_27zSWD9t9HGg+-RFajRyySLM6pvqeLBpQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 5SQVIDBRKQQMU7WKXJ2BIFPLWF7YLXE3
X-Message-ID-Hash: 5SQVIDBRKQQMU7WKXJ2BIFPLWF7YLXE3
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Is it possible to set sps radio core 1mhz or lower sps without using ddc (RFNOC block)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5SQVIDBRKQQMU7WKXJ2BIFPLWF7YLXE3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0906022414856864865=="

--===============0906022414856864865==
Content-Type: multipart/alternative; boundary="0000000000009ed87f06350049d5"

--0000000000009ed87f06350049d5
Content-Type: text/plain; charset="UTF-8"

In RFNOC block i need set sps a muliplay of master clock but not need high
sps. I need low sps but I want to not use any ddc block in my usrp fpga
image? Is it possible ? Can anyone  guide me? Thanks in advance

--0000000000009ed87f06350049d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">In RFNOC block i need set sps a muliplay of master clock =
but not need high sps. I need low sps but I want to not use any ddc block i=
n my usrp fpga image? Is it possible ? Can anyone=C2=A0 guide me? Thanks in=
 advance</div>

--0000000000009ed87f06350049d5--

--===============0906022414856864865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0906022414856864865==--
