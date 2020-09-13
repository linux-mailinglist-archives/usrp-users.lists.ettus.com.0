Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 476252680AC
	for <lists+usrp-users@lfdr.de>; Sun, 13 Sep 2020 20:04:15 +0200 (CEST)
Received: from [::1] (port=47052 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kHWMI-0002tI-9q; Sun, 13 Sep 2020 14:04:14 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:38346)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kHWME-0002WF-LV
 for usrp-users@lists.ettus.com; Sun, 13 Sep 2020 14:04:10 -0400
Received: by mail-qt1-f172.google.com with SMTP id c18so11848936qtw.5
 for <usrp-users@lists.ettus.com>; Sun, 13 Sep 2020 11:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=4vat6vOB+q5k7THJ857qY+oTTWmDVhht2xInaAfFr20=;
 b=R6HYGk/YcWPbvJL7G+WDpyJe9aY6jtZG1LpnMFUU98pnh34q8I4AqrIcpQpfFUi49l
 1v5XmOQDYmbIzA9komp4pYyZpQp/2cBFDSYe9M1Ore5/kHsLjG+Qlns92VqE3ZChhm8E
 z88HbYEIodYLQei3MIq+5kBfVSFnxBo4SptFCfQNFyH2cOgIZG2K6TNvZ5mj0WROGEbg
 RADZ9hQaY28ZdYw65f54NNjTWjZ2kw5omGA7S/OoAGdk4V2xG4qOpAlvqt2k/ZquMiPp
 CoGZ+qiNDU8SexBVm4DuEzT7/bnXsQTjgYPK/UcMkZmDsFKMzIKn4Rgy4+wOHeyLmjpH
 N6uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=4vat6vOB+q5k7THJ857qY+oTTWmDVhht2xInaAfFr20=;
 b=onazrEt6R/703V+zJID1M3+pjbDar3kbPZGvc/NVgl6vmlCg9zAw3ta4Y8upiWgcpO
 wAy4jvs2kgNFO6BIH9wP1WxdxUocKJVToNeWzJzkL7Muup62+cPodIKRxFnRYJPQfWDn
 ziNFtA95un+vmbeA0UiEfnpkHxqBaZtVWouXIyONQrCpI8Bn/kxe2m5UMqNi4Xd36YfX
 3Q4j9IVwHzwUwrn13PJ7Bes8nqzuDh0i6PoXLT1MYP8ORwdylEqDLXsz4+AilWtYG2Oy
 65z2PUeKndbUgGLb/7B4x2aswlXVv2ceVMHRwNjaEOywdE8PZ/oLuBqRcs5+xcUBBA5v
 RGkg==
X-Gm-Message-State: AOAM530NGaxpmWrvpzlezHnoqkWY3AHyEFQzX5fHq9fW3f76MRsWHoX9
 ynFRvGBN7s/QJm0WVEBnAGs9YdD+2Hg08Q==
X-Google-Smtp-Source: ABdhPJxi1DzGjxpTV+OD5D7/0lNf3EcVO4wxXVdCAGq9gPqtU6u/ke9qOWbvYAHlWcoFizpkSIc0PA==
X-Received: by 2002:aed:2ce7:: with SMTP id g94mr10500218qtd.184.1600020209842; 
 Sun, 13 Sep 2020 11:03:29 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id e13sm11346645qtr.85.2020.09.13.11.03.29
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Sep 2020 11:03:29 -0700 (PDT)
Message-ID: <5F5E5EF0.3030100@gmail.com>
Date: Sun, 13 Sep 2020 14:03:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAM+cdhJvnNTRtukiKPx9OhGQAqeFOTBz+Vp3yc1ye4CYV44+OQ@mail.gmail.com>
 <75B13EC1-5F7C-4E97-9614-26221D8E5C20@gmail.com>
 <CAM+cdhJQbH0s+rLMcfH8dVgYNqcnZVEodQCqhtLynupdChz92g@mail.gmail.com>
 <5F4E70FD.4000400@gmail.com>
 <CAM+cdhJ9F4v7q2Nq7NxoqkttPgB6eR1_6v9bJkpefoQKpQONLg@mail.gmail.com>
 <5F4E73F0.9010302@gmail.com> <d32b2c60-88aa-3d07-2405-2685d0ca2595@ettus.com>
In-Reply-To: <d32b2c60-88aa-3d07-2405-2685d0ca2595@ettus.com>
Subject: Re: [USRP-users] External Oscillator with Ettus N310
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
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

On 09/13/2020 02:00 PM, Marcus M=FCller via USRP-users wrote:
> wow, doesn't at the very least that Schmitt trigger kind of worsen the
> phase cleanliness, seeing it's a temperature-dependent active part?
>
>
In practice it didn't seem to be a problem in my application.  I needed =

*something* to square-up the output.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
