Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 242CD172867
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2020 20:15:13 +0100 (CET)
Received: from [::1] (port=44602 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j7Ocn-000431-7K; Thu, 27 Feb 2020 14:15:09 -0500
Received: from mail-qv1-f65.google.com ([209.85.219.65]:41063)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ryan.volz@gmail.com>) id 1j7Oci-0003wK-No
 for usrp-users@lists.ettus.com; Thu, 27 Feb 2020 14:15:04 -0500
Received: by mail-qv1-f65.google.com with SMTP id s7so117717qvn.8
 for <usrp-users@lists.ettus.com>; Thu, 27 Feb 2020 11:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=iG0NrGNsuhk7N89gjLoM+UZzRAwfN+5XR+A5RU+uL0Y=;
 b=hX8TEeaaPVkCpyb6wmV3np3ejq7YF7nYzSWRC3OfkwNw0hBm7lQKHrdlciYV2OAsYx
 x1RndsiEBpsjxDFqdQ/xYU/M2JlgpB0SKhY3J6hXHXbOxQqM2FUQnCUL+pa8cX21a1r2
 WwWdeB0AXRl95Zpw0IipOdwzI5NxLGR3X4RquaAsC4p+IaeAfqFoiu/0lzV+HgrhNSaB
 YV53RA3fLHIJClL+tUfaIxOVfa5peX4aYHVpRxsSefBuNuOaDvC8kp9GNyGh8tNwP/sL
 sz70DgOrndcqAkFGPGPiU9zuw/PDFq07hUEE7mbUBFNrb9ofGs9O29cLM61P8SjqotLz
 K3wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iG0NrGNsuhk7N89gjLoM+UZzRAwfN+5XR+A5RU+uL0Y=;
 b=mRj7KmZHSQNcGTYPR/LMJGhQLVx7molxVjg5XmmwoMcTWinqwvdqEtz/Qkm6n1PCDH
 hEgDfvEMeO4Q2XdmSeJDusTeReT1Ttg/XQsLTYZQFmDQb/niX1gNJHfN42cVt/4f2TWq
 J3s7OhiEHJ1X6PkxFs9tBOf0+RVofjC7IPDZvT/LvDxiXIMwiTpJaG06/Z9Og3bPoNei
 2NOa4k4tAI8skME+2D5kXEQv8OkS6cIbwdexdmNY8RBjCOsLlak/tFyRLesz5pgl5Kmr
 XyLvUQEI16eGP/owkKT4y6g+Pdfgtf3DkbJ08tQpMN34UMfxdHES0Ec5qVxkdCOkmAKn
 mGSw==
X-Gm-Message-State: APjAAAUh/fLj5GtII724pG0dPCrHD85xIL29/A7q5CKhImk9uBpokt76
 gxdflmK/frf41vm9mhH+0ZwtvCxN
X-Google-Smtp-Source: APXvYqx6vitJP4nhaA3cAKYKAhptM63yBQ9kq5lby7nyLf3D6gxzt7abYlO/l4Ff3cwbDEBb9XKxjQ==
X-Received: by 2002:a0c:ca94:: with SMTP id a20mr410833qvk.150.1582830861845; 
 Thu, 27 Feb 2020 11:14:21 -0800 (PST)
Received: from [192.52.65.74] ([192.52.65.74])
 by smtp.googlemail.com with ESMTPSA id h8sm3609330qtm.51.2020.02.27.11.14.21
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Feb 2020 11:14:21 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <MW2PR1901MB213772B28ED4FF5A4190EDB2C6EB0@MW2PR1901MB2137.namprd19.prod.outlook.com>
Message-ID: <9f23fc20-5685-e0a2-0b00-ee3ab68ca8f6@gmail.com>
Date: Thu, 27 Feb 2020 14:14:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <MW2PR1901MB213772B28ED4FF5A4190EDB2C6EB0@MW2PR1901MB2137.namprd19.prod.outlook.com>
Content-Language: en-CA
Subject: Re: [USRP-users] Building and Installing UHD with RFNoC and
 GNURadio 3.8 from source with Tensorflow 2.0 integration
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
From: Ryan Volz via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ryan Volz <ryan.volz@gmail.com>
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

Hi Jerrid,

I made some conda packages for UHD and GNU Radio 3.8 that are available on conda-forge: https://conda-forge.org/. That might be a good way for you to get things running in the same python environment. The UHD package does include the Python API. The only caveat is that the GNU Radio package does not include gnuradio-companion if you need to use that (GTK 3 is not available yet for the GUI).

Cheers,
Ryan

On 2/27/20 1:32 PM, Jerrid Plymale via USRP-users wrote:
> Hey all,
> 
> So I need some direction for what I am trying to do as I am not sure that it is even possible. We are using machine learning in the project I am working on, and would like to incorporate that into GNURadio if possible. So I am currently using an anaconda environment set up with python3.7 and Tensorflow GPU 2.0 for the machine learning development. I would like to set up an installation for UHD with RFNoC and GNURadio 3.8 using this conda environment such that it uses python3.7 and has all of the python libraries that the conda environment does (like Tensorflow GPU 2.0). Can anyone point me in the right direction for guides that can help me achieve this or instruct me directly? Is this even possible? Would I have to just set up UHD with the Python API to integrate Tensorflow GPU 2.0 into the script? Any and all insight/information on this topic would be greatly appreciated.
> 
> Best Regards,
> 
> Jerrid
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
