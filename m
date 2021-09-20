Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07024411550
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 15:10:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BFD6384275
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 09:10:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WF1PXeAs";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id BDF23384238
	for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 09:10:02 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id bk29so42195392qkb.8
        for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 06:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=358HVDu8bQlkjk0Jq4zyA1cP5qQdKFvNJ75fIJyrvVk=;
        b=WF1PXeAs28f+JflIlWFqPRQ+GwTOIgL0R4pnix0eBTH30Ed/KmxZiAIVEEhUA74eFO
         csR5wMiQ+KZFPqMGgrKdvogE5Wpb30yc2d5Oxl+dwJr81/9wUSbbHZquOu25tw9CxdNX
         xKq93PWEVoKseHMgBBPfiD2uoJOpQ836pn3AAGlbOLBZtv0GS8d6YZ2zg4hrZCXd1+LJ
         8lkvMZC+FZRBXSub2FltCiSSerJ16Ie2Mi+GXpXfrpWokfvuw1tZLuzwJk33dyO1/Qy7
         +Hp4PnwHX2yf5ckpGp8i9I1KW3hJ2mf+qLP+j6gSIgeYu10VtlxiJP5C97lGUlLsuUqU
         Rgpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=358HVDu8bQlkjk0Jq4zyA1cP5qQdKFvNJ75fIJyrvVk=;
        b=XJwrKhKnh8bSp/eZyzPHz1WGwxonGkxH6b0umBcrUEYkkHEgKXSSqsomBrCVbOL5zy
         cGWP/B1dYoEPZhVPicqsbHBqAQVMETfbbZ3uMBIXf97vhS4OSRwBFvnhYrBN9BG0hKSn
         7/luf7hZvtPhTlbOt1lhCQMOYYQDgvhDZdNFTBsbQmxHkhye6DQ0/ygdEjxK3pd1x9jM
         SZRJku7QCaJmNWv/fgmeUakeKQb2m5k0MqkFsKzVt8bksuNjSjSdJjzL8Qjy0DBbyMSN
         QuKq4UCsp1KqTeqEkK/6i6hMN0M0NbRfSIQeL1o4Yk/ZOZuwVf5is9l6NuFTIgi+gSxE
         fndg==
X-Gm-Message-State: AOAM5301NCrPFYo6RoqSf2bpos8ZGi+tBV9lsn9tsg9KqLmKiE2Cxw95
	K/to+2SP69xwIBAKFMl3yLBsX6dgf2n6pg==
X-Google-Smtp-Source: ABdhPJyRh3B7JhfI6cUV/2t/JTVzfw3pTO1JhrukO36dCpPcpC1exvxN25Vql0Ayo7RLSH4kJgrDEw==
X-Received: by 2002:a37:686:: with SMTP id 128mr24895187qkg.94.1632143400545;
        Mon, 20 Sep 2021 06:10:00 -0700 (PDT)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id bl7sm3447467qkb.32.2021.09.20.06.10.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 06:10:00 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <50e33ea6-dc74-d466-8e90-aeda6957c14a@novagrid.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <866dea30-4849-591f-b267-f53162efbeac@gmail.com>
Date: Mon, 20 Sep 2021 09:09:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <50e33ea6-dc74-d466-8e90-aeda6957c14a@novagrid.com>
Content-Language: en-US
Message-ID-Hash: JPP3ILALIVGJASUZGSGCMFDU7GH5KPU7
X-Message-ID-Hash: JPP3ILALIVGJASUZGSGCMFDU7GH5KPU7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Create two stream with python UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JPP3ILALIVGJASUZGSGCMFDU7GH5KPU7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0wOS0yMCA5OjA2IGEubS4sIENocmlzdG9waGUgR3JpbWF1bHQgd3JvdGU6DQo+IEhp
IGV2ZXJ5b25lLA0KPg0KPiBJIGhhdmUgYSBweXRob24gc2NyaXB0IHdvcmtpbmcgdGhhdCBkZWxp
dmVycyBkYXRhIGZyb20gYSBzaW5nbGUgcngNCj4gc3RyZWFtLCB3aXRoIE4yMTAgYXQgMS41TVND
eC9zLiBOb3cgSSB0cnkgdG8gaGF2ZSB0d28gc3RyZWFtcyBhbmQgSSdtDQo+IGZhaWxpbmcgd2hh
dGV2ZXIgSSB0cnkgIQ0KPg0KPiBJIGZpcnN0IHRyaWVkIHRvIGhhdmUgMiBhc3luY2hyb25vdXMg
c3RyZWFtcywgZmlsbGluZyAyIGJ1ZmZlcnMsIGluIDINCj4gaW5kZXBlbmRhbnQgdGhyZWFkcy4g
QnV0IGFzIHNvb24gYXMgSSBzdGFydCB0aGUgc2Vjb25kIHN0cmVhbSwgYm90aA0KPiBzdHJlYW1z
IGZhaWwgISAoSSBzZWUgRCwgREQgYW5kIHRoZSBidWZmZXJzIGFyZSBhbG1vc3QgYWx3YXlzIGVt
cHR5ICEpLg0KPg0KPiBUaGVuIEkgdHJpZWQgMSBzeW5jaHJvbm91cyByeCBzdHJlYW0sIHdpdGgg
MiBjaGFubmVscywgYW5kIGEgYnVmZmVyIG9mDQo+IHNpemUgKDIsIE4pLCBidXQgaXQgZG9lcyBu
b3Qgd29yayBlaXRoZXIgIQ0KPg0KPiBIYXMgc29tZW9uZSBkb25lIHRoYXQsIHdpdGggdGhlIHB5
dGhvbiB2ZXJzaW9uIG9mIHRoZSB1aGQgPyBCVFcsIEkgdXNlDQo+IExGUlggRGJvYXJkLi4uDQo+
DQo+IEFueSBoZWxwIHJlYWxseSBhcHByZWNpYXRlZCA7IQ0KPg0KV2hhdCBlcnJvcnMgYXJlIHlv
dSByZWNlaXZpbmc/wqAgKE90aGVyIHRoYW4gdGhlIEQpLsKgIENhbiB5b3Ugc2hhcmUgYSANCm1p
bmltdW0gcGllY2Ugb2YgY29kZSB0aGF0IHNob3dzIHRoZSBwcm9ibGVtPw0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
