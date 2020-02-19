Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8F0164D8F
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2020 19:22:58 +0100 (CET)
Received: from [::1] (port=36050 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4Tzs-0004Sd-6b; Wed, 19 Feb 2020 13:22:56 -0500
Received: from mail-qt1-f178.google.com ([209.85.160.178]:38164)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1j4Tzo-0004MK-N2
 for usrp-users@lists.ettus.com; Wed, 19 Feb 2020 13:22:52 -0500
Received: by mail-qt1-f178.google.com with SMTP id i23so921585qtr.5
 for <usrp-users@lists.ettus.com>; Wed, 19 Feb 2020 10:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=gfX5ju+5fnGrQBlJVgVxa69tKeEUBZvaN7bL6cvlMKg=;
 b=dLQ/G4julFythTHxrZ++i/miK7F7jQo8H+wMakH8e7LnE8M+7phaZawrbtNmKzIXTh
 gDlinwn/zPUUrVB9jScCzmUCHBoDk+ImsZUlDsn8Mbwrea6Vo3zAaDitI27WvLJtEGAS
 WzlgNMwSot1jbNL9aftVU8aG96EfVyRn7hhY/1LM/YzRwTcHgnEYkfRJDXgvWBjgz+tg
 ruZk5RKtN0DC0j1nQCLO+3S1QhQ30muyGaMCVtcZ/qBg45jST+ZBcl+Pc0v01acb1E8f
 gkomQ4gwKyzAsnuSMQ4u7Z5jUVDTbxstqgjBKExtroTxuxI2b/NYp5+CF3DwjgyDphL6
 RiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=gfX5ju+5fnGrQBlJVgVxa69tKeEUBZvaN7bL6cvlMKg=;
 b=TsyMH+Q6qYrZ+lViDpwdo48mCnrx3Z3MrjSUHc1DN1gzM0WdY09LrEsGn9ltdLDVSd
 JnRkrK7WgCnWMuDal/y2oDxKq/Es5/NiDca5tvJkQ/Lqc8cLOuahvrzldODfayGNvK4c
 YyI4AYz3/rbWyKl0PztckRMKI9q5ol4Fb0DqaoPWJF7ns1CgbKql2kCPTW5jEbxhzKXW
 z38G7qmcowzoYtpAUxFAZ2n5ybuH45Hqbnvqy8O2wYgfBdDLCfKhpCe6m2an+qlsl3EU
 56npyOtcqdHM9+U49HCiwhz9CfvtHNmq/JDnr+XRfnZ/+XOS5GRRNjA59PLGE8DfOH5v
 sGOA==
X-Gm-Message-State: APjAAAUytgfIAAc6Ulu2ZK3IYWeIDSSYUEJfHyfCt3Gz9z8yq8zKNg8Q
 sodRtqVcNCZ40IfheG71f6uKrbaM9NA=
X-Google-Smtp-Source: APXvYqzQbIG/qQol5bqUWj0vs8nXyoKvNX8bSo88CCM3kTQPdskSIqI4AwyQFFPotp7Ezf+QWs8mzQ==
X-Received: by 2002:ac8:2bf9:: with SMTP id n54mr22918822qtn.280.1582136531984; 
 Wed, 19 Feb 2020 10:22:11 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id h12sm375188qtn.56.2020.02.19.10.22.11
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Feb 2020 10:22:11 -0800 (PST)
Message-ID: <5E4D7CD2.4050102@gmail.com>
Date: Wed, 19 Feb 2020 13:22:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAAZMsC3YHUe0gTn8eqoDJP_L9nU-b7qkxWVrc1CHq11RDPN+nA@mail.gmail.com>
In-Reply-To: <CAAZMsC3YHUe0gTn8eqoDJP_L9nU-b7qkxWVrc1CHq11RDPN+nA@mail.gmail.com>
Subject: Re: [USRP-users] GNU Radio UHD Blocks Resolution
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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

On 02/19/2020 12:01 PM, Alvaro Pendas via USRP-users wrote:
> Hello,
> I am using GNU Radio and the USRP B200. I have noticed that for the 
> GNU block UHD: USRP Sink, the values you pass to the block must be in 
> the range 0 to 1. I guess that means if you do not want to lose 
> resolution you must ensure that you use the full range, that is to 
> say, your minimum is 0 or close to 0, and your max is 1 or close to 1. 
> Am I correct?
>
> On the other hand, what are the meaning of the values produce by the 
> block UHD: USRP Source? They must be related to the signal power, but 
> I am not sure about their range. Is the minimum value that block can 
> produce the min of the ADC output, and the max, the max of the ADC 
> output? With the USRP B200 the ADC resolution is 12 bits, are the min 
> and the max always set with the same value, or does it depend on the 
> USRP configuration?
>
> I am using GNU Radio right now, but probably, just knowing how this 
> works with UHD would be enough to understand the rest.
>
> Thank you for your time,
>
> Alvaro
>
Gnu radio generally likes to have baesband data streams scaled into 
{-1.0,+1.0} which are linearly related to instantaneous voltages at
   the antenna of the hardware.

To a first approximation, a value near +1.0 or -1.0 will drive the ADC 
to its maximum +/- value.  But that's only an approximation, since the
   signal is processed a fair amount (linearly) prior to reaching the 
ADC/DAC, and with analog hardware there's no way of ensuring that
   a max value wont' over-drive the analog hardware.

Power of a sinusoidal signal is proportional to the  I*I + Q*Q -- 
remember we're dealing with *voltages* here, so ohms law applies...




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
