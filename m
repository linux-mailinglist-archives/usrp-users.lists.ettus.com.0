Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2704AB2A2
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 08:55:08 +0200 (CEST)
Received: from [::1] (port=54484 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6898-0006P2-GV; Fri, 06 Sep 2019 02:55:02 -0400
Received: from exchange.tu-berlin.de ([130.149.7.70]:47033)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <braeuer@campus.tu-berlin.de>)
 id 1i6894-0006KK-8i
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 02:54:58 -0400
Received: from SPMA-02.tubit.win.tu-berlin.de (localhost.localdomain
 [127.0.0.1])
 by localhost (Email Security Appliance) with SMTP id 0077936A66_D720298B;
 Fri,  6 Sep 2019 06:54:16 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client CN "exchange.tu-berlin.de",
 Issuer "DFN-Verein Global Issuing CA" (not verified))
 by SPMA-02.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id
 C8C4232F70_D720297F; Fri,  6 Sep 2019 06:54:15 +0000 (GMT)
Received: from [192.168.103.85] (130.149.49.51) by
 EX-MBX-01.tubit.win.tu-berlin.de (130.149.6.151) with Microsoft SMTP Server
 (TLS) id 15.0.1395.4; Fri, 6 Sep 2019 08:54:15 +0200
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
References: <e9eaf91b-fbf4-af25-be4c-122e88f21ec6@tkn.tu-berlin.de>
 <CAL7q81tLUkzR9hruos3hpL9DnfOD5wdK85j2QdZnCSrPk3aJsQ@mail.gmail.com>
Message-ID: <466f6c07-f9db-b4c9-a6e1-a634591c2886@tkn.tu-berlin.de>
Date: Fri, 6 Sep 2019 08:54:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAL7q81tLUkzR9hruos3hpL9DnfOD5wdK85j2QdZnCSrPk3aJsQ@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: EX-MBX06.tubit.win.tu-berlin.de (130.149.6.150) To
 EX-MBX-01.tubit.win.tu-berlin.de (130.149.6.151)
X-PMWin-Version: 4.0.1, Antivirus-Engine: 3.74.1, Antivirus-Data: 5.67
X-PureMessage: [Scanned]
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de;
 h=subject:to:cc:references:from:message-id:date:mime-version:in-reply-to:content-type:content-transfer-encoding;
 s=dkim-tub; bh=71orGLRxOAOUxY7o2pZeHeX3DgQ82H1R02q681h1ojg=;
 b=If/yO1SdpJ0B9UiSMBZwxdoCpP/brZS0CxNJJOLrloJLYbxgNojR7zINxbE8sWgua1UM0NhDV6UZuQm0RRhtEsqs00Knc6oIufzpcCM6Yr1cfJMeICUrfzrD7NZECiEXmGxubcEw014eGSdYaIozxWrHzt4uABbmC0QdHrHIwnU=
Subject: Re: [USRP-users] RFNoC packet sizes
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
From: =?utf-8?q?Sebastian_Br=C3=A4uer_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Sebastian_Br=c3=a4uer?= <braeuer@tkn.tu-berlin.de>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

Hi Jonathon,

thanks for the quick response. It is a UHD application and I set the 
radios spp via radio->set_arg before creating the streamers.


Sebastian

On 06.09.19 03:52, Jonathon Pendlum wrote:
> Hi Sebastian
> 
> Is this a UHD app or a GNU Radio flowgraph? Are you setting the spp via 
> stream args?
> 
> Jonathon

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
