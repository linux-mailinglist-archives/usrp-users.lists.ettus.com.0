Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D07FD4D109
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jun 2019 16:56:51 +0200 (CEST)
Received: from [::1] (port=57138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdyUc-0006ae-1u; Thu, 20 Jun 2019 10:56:50 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:45435)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zhluo@umich.edu>) id 1hdy5B-00058L-TE
 for USRP-users@lists.ettus.com; Thu, 20 Jun 2019 10:30:33 -0400
Received: by mail-ot1-f45.google.com with SMTP id x21so2869699otq.12
 for <USRP-users@lists.ettus.com>; Thu, 20 Jun 2019 07:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=umich.edu; s=google-2016-06-03;
 h=mime-version:from:date:message-id:subject:to;
 bh=BR4fjYQMi2mKebGtc2CJrsPz0f7U594edAPwrPAJ2H4=;
 b=Abqy2uqpGyNYV59RmoKk/zlw1Lx5R0wE4AFPgUnrdVzXlJNI+UjWYyDBOEhQOc50tO
 9VsScDggxylv6gEM+VuirR49NCg+QmcvwEV9hoY23B5hJnbE735pwDgRsz3Ob7+SHBD7
 iSjJQnQkvrXJ+c3exgL2ijHoi1KGBp3z6K4jU4t5IR8oUh4Dd2vL154yvB4FZhtcfJgt
 TqIj/Iy/q95q5HPtwCFjOq+Q555+KuwK4KFMwjUAIYVgYvsPA7oi6vlc+vqHmmny0BKZ
 WpaigfSrqKgvYVELWwgyqnIG/QYGjUnQ8udWCOAxlvypz4VFu+J7xFszZshhOEdemQwb
 RCYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BR4fjYQMi2mKebGtc2CJrsPz0f7U594edAPwrPAJ2H4=;
 b=MdIUb+JYoql7ZMZ8YElfaXEFPvGzEVIKLKpgqKh9N8AiXmxcJPOokfXcQQqUqC13Zn
 b/DgynsiW7ObtPSnFuYmxdDB2t2I0YVZudHj9A9CCeEM7Yu6RptSruW2dOGL7a7mHMwU
 wn6WNRQXZOeV3JCJsRm8q36WgZOn50yUswQmRe/aCl56Zp/AdcGirh226RIS3l65KELc
 6IQYbgbNXU3a6qusfN7SwmmryvuJqM+mikD8BP8Ang8aPVQivtusClP7kpgeh8k3bl5k
 vsGIkgoWrPwfirXwK93lVmL4q2+KduA1dY77zhwbeW4RC1W8fnz0ElimnrNlUhATZTLu
 hgsA==
X-Gm-Message-State: APjAAAU1jdv2lsLdDaelUL4lbRQ4Q14cGB5IMNtrp9Lxppwj0NUKLj5i
 uFmiIt9PSQuJ70NsO7M8Ewrm0ok9m3EUAVVRfPxQHISf
X-Google-Smtp-Source: APXvYqwbzZNsF1hY3zLvaXN6YyFLc6vHiNwtpkmd5Sww5dq2FDFOMv11gYUd0ujiaWet15vCaAUaOCcSRjeynMuni/I=
X-Received: by 2002:a05:6830:1250:: with SMTP id
 s16mr8261328otp.158.1561040992794; 
 Thu, 20 Jun 2019 07:29:52 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 20 Jun 2019 10:29:40 -0400
Message-ID: <CAH4wXLrjq=fk5ad7y-t_LLVDj90Xa4o12Z6poPWoVXhBSNwCPw@mail.gmail.com>
To: Zhihong Luo via USRP-users <USRP-users@lists.ettus.com>
X-Mailman-Approved-At: Thu, 20 Jun 2019 10:56:46 -0400
Subject: [USRP-users] unsubscribe
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
From: Zhihong Luo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Zhihong Luo <zhluo@umich.edu>
Content-Type: multipart/mixed; boundary="===============8617804283664609399=="
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

--===============8617804283664609399==
Content-Type: multipart/alternative; boundary="000000000000db1377058bc22da5"

--000000000000db1377058bc22da5
Content-Type: text/plain; charset="UTF-8"



--000000000000db1377058bc22da5
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><br></div>

--000000000000db1377058bc22da5--


--===============8617804283664609399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8617804283664609399==--

