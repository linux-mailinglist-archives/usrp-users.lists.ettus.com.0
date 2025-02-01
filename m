Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4808DA246FF
	for <lists+usrp-users@lfdr.de>; Sat,  1 Feb 2025 05:19:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 22AF2385F92
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2025 23:19:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738383577; bh=GQitGZJW3FUaJBZbjAEF5KqIBZeJGt7YE930wflJosc=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RSFEvz+xtSR0f8QWgHO0l7tmZflsfZptX1KR4/EMjscxhc3Wmi+LWTqwO9lw5khG2
	 Y3P+blgEBbeXi0F0ctcOXTYQorFQFvZ+DC2TOfA3d30Bndt4w0t1oXanmgWYxLHDvm
	 NycqM5wDX0zERNGzywoRZQ0X7OsEjN83f2kygzf11jsIINblIYL7nzwWH5INQStyvM
	 zkozCG3qIl6WQld+RJA244x+VfMEPN5CDZI7HFmzpb2wd8UELpmJeosZWgSfOhdeXA
	 cIU1RObLW2xmAH9Sk4nE52KTtUkDL/u2smzgGnMOsSH62aDj+dVUcnztpr/XaVnCql
	 9kw4KpLmOwBjA==
Received: from omta035.useast.a.cloudfilter.net (omta035.useast.a.cloudfilter.net [44.202.169.34])
	by mm2.emwd.com (Postfix) with ESMTPS id F1B8A385E88
	for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2025 23:19:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="a+jm3c8V";
	dkim-atps=neutral
Received: from eig-obgw-5008a.ext.cloudfilter.net ([10.0.29.246])
	by cmsmtp with ESMTPS
	id dywfteGCGzZPae4yatLaCX; Sat, 01 Feb 2025 04:19:24 +0000
Received: from 119-18-48-61.webhostbox.net ([119.18.48.61])
	by cmsmtp with ESMTPS
	id e4yWtxtwLh3xve4yZt7uEw; Sat, 01 Feb 2025 04:19:24 +0000
X-Authority-Analysis: v=2.4 cv=F+ZRdLhN c=1 sm=1 tr=0 ts=679da0cc
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=VdSt8ZQiCzkA:10 a=j0z1oGNQ4lYA:10 a=NEAV23lmAAAA:8 a=YArTXX1o0PUOcL-03LwA:9
 a=CjuIK1q_8ugA:10 a=qG4zWllZaOcA:10 a=IOVrdXkZsZi_Xkr5h5Fc:22
 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:Subject:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yCTZ9qkwlbEwhnhiamOlgFHHOEuzjFoIfjozWtT6qAY=; b=a+jm3c8VOvf6CDM8LYdt2REkAe
	EYbmpYU+656w0TLaIflvqqTYsSPoOzeoC7VNlFoj1f90WyprNX7QeBAui/VNOrbn3n0hzKGou60or
	XCobLyvRQHX13SYPY0vvlJ6UWb/UE6ca0VgfD4mOTZ4Ug7b63DCccJc33UJ2OTE0pXAy/1o8rxzfJ
	6h2IwAM9o1WD6rkvZJ8WiCoGScotS6AcXgY9KoR8kOks1fzBY2dReiy7jm3US/aJwxIACr+W/qCZu
	IHg2Be+5DEGt5XANEBiMYWv5kAATt57iHpD32AkLTefa0DxKW4aU/tVH+NRSKjUazDaBA62oHhq7Z
	ZRBYc4bA==;
Received: from [::1] (port=34576 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1te4yR-00053G-1J
	for usrp-users@lists.ettus.com;
	Fri, 31 Jan 2025 23:19:19 -0500
MIME-Version: 1.0
Date: Fri, 31 Jan 2025 23:19:19 -0500
From: kavinraj@atindriya.co.in
To: usrp-users@lists.ettus.com
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <b9e28d2aa6badcc44f0fa3cbbf07055c@atindriya.co.in>
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
X-CMAE-Envelope: MS4xfBfmam5gbStjtzWxE4+fT7dUjbAAd+8MB4Cx2LEpptp4Xt9dcRyCQGwvLAd7LzY5HpZjQjeDvPOb9RDc5H9qWJ+nLKQPWctF/dtRicDfbaYQXQzdk38i
 hamzCtGJ9nW9NfK0qMMs6HWvp3wuZvcRtIVW0YSwFCK45B3eGrIcVnF1XuGeVkaVj89+DBD7ABfwEwLJr0iwTD6EsV+EVmu5YnqGnbrii114dXIZKfc00Ydk
Message-ID-Hash: VHYWKR4L62H7LAIINH4YEZWYUF45ZRY6
X-Message-ID-Hash: VHYWKR4L62H7LAIINH4YEZWYUF45ZRY6
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] REG:GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VHYWKR4L62H7LAIINH4YEZWYUF45ZRY6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
    I want to generate LoRa burst signal in USRP B205Mini. For that i am 
using GNU Radio. By default, there is no LoRa Tx and Rx blocks in that 
tool. So, I downloaded from https://github.com/tapparelj/gr-lora_sdr and 
I followed the steps in the readme file to add the LoRa Rx and Tx 
blocks. After doing all steps, I am unable to add it the GNU 
Radio(3.10).
    What may be the problem?

Thanks,
Kavinraj.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
