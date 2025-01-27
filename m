Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A012A1D8E4
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 15:57:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F8C1385D96
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 09:57:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737989866; bh=iaX2QQBkcBrUMF77QNM7ojbUfs3uMMX0cVNnmR+Jodc=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Fd+KZGeHaWbrKDYi5Yr/aV5yEDaavebDz4Jy9LHcbZeWv5cEPaTN62A4lb2lot2/U
	 cT4lBadLFk/SeDRXUjmj8YzWALbD1MlWPct3OSdhWiwBx7KUsbUbOmnSa7Eytw3Dxt
	 UqV05b4oqbkMkXmOb8WxVBqJWaoaq5WLSfLDCRsMOiuRCEPayyS6RNxdi3rWHSwyB8
	 QdDCkiLr8R0OeUZWXnf5UG6eeIE8l/pEtmyXExC43vfnU3AECG08NqxZKoEM4aEgus
	 ni6yG3e6xgzKdTLqURUxxK+AijpVcrchIcXfxxXnt9nH+7G2yG9j92mAYVAS+8/r6v
	 XZrdZx91Le8WQ==
Received: from omta039.useast.a.cloudfilter.net (omta039.useast.a.cloudfilter.net [44.202.169.38])
	by mm2.emwd.com (Postfix) with ESMTPS id 42B22385D6B
	for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 09:57:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="Lk9xBVEm";
	dkim-atps=neutral
Received: from eig-obgw-6003a.ext.cloudfilter.net ([10.0.30.151])
	by cmsmtp with ESMTPS
	id cEDVtLdtg1T3hcQY2t4J6b; Mon, 27 Jan 2025 14:57:10 +0000
Received: from 119-18-48-61.webhostbox.net ([119.18.48.61])
	by cmsmtp with ESMTPS
	id cQXyt31NYNMSlcQY1tNJ9r; Mon, 27 Jan 2025 14:57:10 +0000
X-Authority-Analysis: v=2.4 cv=K9DpHDWI c=1 sm=1 tr=0 ts=67979ec6
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=VdSt8ZQiCzkA:10 a=j0z1oGNQ4lYA:10 a=kVywuAJEAAAA:8 a=etiEgX_XAAAA:8
 a=kFi0M3dOCuRJPDzw-zsA:9 a=CjuIK1q_8ugA:10 a=26tcdy2dAj9m90MLnbb2:22
 a=MLbIUA-Bjd6y1alW9qBG:22 a=IOVrdXkZsZi_Xkr5h5Fc:22 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=iWGyVXHtqQwCJGtutbqwyNhYjkU6vxKW8KPwfy0yBvU=; b=Lk9xBVEmLyDrw08u7OGuPxakHU
	tgY7kpycj9CT1lvjJcEfLlBNzOT9kJjmaDSALhpmuG7NUDHTk9ABYNG5Ys6C1uy1QWZ9FRs5MKN6C
	el/evGnFG38HiXcnPyaqqDkUJNKr1SIx9Bl7IVZzlx/blyx6yZtGz/OR9jMCha4vBR8V/ZC06F7zX
	OoK5HmrPiyRzVCpWVDmNwd/hEa7LMX4uagup9nzNw8P2Y9c6ujpt8dYwVZp/u8WGbs64Q8HjmwCJp
	O84Gncl4TMB7msEf7vl67AvYT16AjfaYZzF5nDa8cnDFmsBfCiFwR6uzM9hgMLaX7/gI4ZmfSk/nJ
	PfZ1F8zA==;
Received: from [::1] (port=57974 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tcQXw-0000hg-0M;
	Mon, 27 Jan 2025 09:57:04 -0500
MIME-Version: 1.0
Date: Mon, 27 Jan 2025 09:57:04 -0500
From: kavinraj@atindriya.co.in
To: Muhammad Hassan <engr.muhd.hassan@gmail.com>
In-Reply-To: <CACDPEcMT4png+YYoYK5QkjiWkm1pvKCkd=FzjMEdcgRP=KrKpQ@mail.gmail.com>
References: <b34d9c34298fbfffa03375a026d5a5ef@atindriya.co.in>
 <CACDPEcMT4png+YYoYK5QkjiWkm1pvKCkd=FzjMEdcgRP=KrKpQ@mail.gmail.com>
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <886e1e77251bdcaf38e55321b09c0cc5@atindriya.co.in>
X-Sender: kavinraj@atindriya.co.in
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.atindriya.co.in
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - atindriya.co.in
X-Get-Message-Sender-Via: server.atindriya.co.in: authenticated_id: kavinraj@atindriya.co.in
X-Authenticated-Sender: server.atindriya.co.in: kavinraj@atindriya.co.in
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4xfFCo0AzbK1hoooGxzjt3KCoSEikSxSPj5G/oAlvBlgIt1OwYsfi+2tJeXuDveGH5IFD0n2Sfhog/IZ6dd4Ug80wGhjoecJB/HCWRk/xUeBZFt9tuZctX
 8rYMQt9LPAPYOz+LFwxsc4xM+jUVdJ+QKUoYMZjlMYMVoVZEF2RUcrqpK7V239eMNXRzZB9fSPo+sLpMELPTCn0k5d4mPQxnrNqhAi5ShuJvFJfNHbr0Dp7+
Message-ID-Hash: LKF32UUIS6SAQ527DOPGLT4SWBU6BSNA
X-Message-ID-Hash: LKF32UUIS6SAQ527DOPGLT4SWBU6BSNA
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG: GNU RADIO in USRP B205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LKF32UUIS6SAQ527DOPGLT4SWBU6BSNA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
   How to change this?

Thanks,
Kavinraj.


On 2025-01-27 09:07, Muhammad Hassan wrote:
> Hi
> 
> You need to change the environment variable
> 
> On Mon, 27 Jan 2025 at 13:43, <kavinraj@atindriya.co.in> wrote:
> 
>> Hi,
>> 
>> I have created a block in GNU RADIO-companion. when I am running
>> it
>> is showing runtime error. I have attached a image file for your
>> reference.
>> I am using UHD version 4.7 only.
>> What may be the issue?
>> 
>> With regards,
>> Kavinraj._______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
