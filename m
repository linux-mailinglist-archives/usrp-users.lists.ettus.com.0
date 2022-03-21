Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C604E325D
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 22:43:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1CDA384D44
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 17:43:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="6HW0xlDJ";
	dkim-atps=neutral
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id A5178384AC5
	for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 17:42:51 -0400 (EDT)
Received: by mail-ed1-f42.google.com with SMTP id w25so19469476edi.11
        for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 14:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=tqG8TQ0Su9aIsN6WFG9Ldgzcn+FunGlY3kyLydMp8Dc=;
        b=6HW0xlDJewB5ajCCDvEi4lacAPrQKNBw+i6Wr9MtfJRsZqu9ADzZGdw5hbIAu58tNO
         nG0A02KxQV/xXKB+ibi7DClhMG07jq4ea6SBksOtI216rrq0wAP5lhQYCBXeSGm2P/0B
         5fAerDXaHHT226d7KUVeMaxr1l//5s5WW9tfUV/ou2n05Wr3md6hmenXeuY50/FzwaQt
         /OG8ILT6Y6b/3PqH5QUG9GHz9ECpoTIyduH+tEmuWIK+eJShZuiNOPSiHG8WOB4OMhN7
         l9un/be2tkzfx5cEUF1EYu/cKCXytUUy+6RfkJbI5phLmDIlS/vOHKc6cEi2xWSblGfI
         RPCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tqG8TQ0Su9aIsN6WFG9Ldgzcn+FunGlY3kyLydMp8Dc=;
        b=ZnHGZyBTGgH7Frw+O/UW/2DG3HTstmRhnOAvHX0FTTqNAyV7OqeFw9xHe6EK1HVkik
         IlcWeOgFS8MSW8qp1C62qUAcEW1/vDK6qadcKKPjMUrs/g7gr3sY5b1BlR8kNeECaIc6
         3tb89gAathF2oJIuAfYsgrQ9DbWAAmcX4is/C6tRALpKLlublU5ZOatk23ayz1aKaGR3
         5Cvpj5pyfil1PIsJ5LOiJskzJoW64v4ePubhAEsUj4zVDxIdzppsT5AjI5KNnfzH3JkY
         GU3n9V7aCW+g1Fs0ddzgzcty/Gk5+eJRe8LI1PemhJYnLtFZtc1yKN3HG7GMyAxtJKuc
         7iLA==
X-Gm-Message-State: AOAM531s0FY/yIY9F+hxvH2MpG3e1HRO4+l1wjpq0b89hZUxZjRtM6+Z
	6Y4CVisOtAstawGoUErBVQ3Cbevgc/N+67UD
X-Google-Smtp-Source: ABdhPJz4m29+ar5uDLkuNnCDgLE6pktCMYv9EX5+zi0bS3Sh7Ta8TmzRzwv6rAJeFKBrrRYOpdSN4A==
X-Received: by 2002:a05:6402:1e88:b0:416:9c06:9818 with SMTP id f8-20020a0564021e8800b004169c069818mr25552338edf.290.1647898970280;
        Mon, 21 Mar 2022 14:42:50 -0700 (PDT)
Received: from [192.168.178.39] ([87.123.247.135])
        by smtp.gmail.com with ESMTPSA id kw3-20020a170907770300b006b2511ea97dsm7364606ejc.42.2022.03.21.14.42.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 14:42:49 -0700 (PDT)
Message-ID: <692cec7e-04ff-0b17-f7ef-ef5b0248b01f@ettus.com>
Date: Mon, 21 Mar 2022 22:42:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3PsQ7758e5AzDEyNuAsgA6xwm1NQXMZHzAgzfgqDXVB8xQ@mail.gmail.com>
 <8d8335b8-bf02-af1e-3493-b0f4063409c4@ettus.com>
 <CAA=S3PuRq4X17Ba0xKSoNZnheQ_YFsXGE7K4iFdm3yBM9AsMLA@mail.gmail.com>
 <CAA=S3PtO-NgrrQVjQBtY5PAFDBYKb2qTB+X7jtZSObw+EA_VTA@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAA=S3PtO-NgrrQVjQBtY5PAFDBYKb2qTB+X7jtZSObw+EA_VTA@mail.gmail.com>
Message-ID-Hash: JMHSRUYRDQYFCLA733VIOUA46PXP7K4D
X-Message-ID-Hash: JMHSRUYRDQYFCLA733VIOUA46PXP7K4D
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Default CHDR_W is 64 for a RFNOC blocks, How can increased samples buffer in RFNOC block to 4096...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JMHSRUYRDQYFCLA733VIOUA46PXP7K4D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkhDQoNCkknbSBhIGJpdCBjb25mdXNlZCwgYmVjYXVzZSBpbiB5b3VyIG9yaWdpbmFsIGVtYWls
IHlvdSB3cm90ZSB0aGF0ICoqaW4gR05VIFJhZGlvKiogeW91IA0KcHJvY2VzcyBibG9ja3Mgb2Yg
NDA5NiBpdGVtcy4NCg0KU28sIHdoZXJlICpleGFjdGx5KiBkb2VzIHRoZSByZXF1aXJlbWVudCB0
byBoYXZlIGJsb2NrcyBvZiA0MDk2IGl0ZW1zIGFyaXNlIGZyb20/IFdoYXQncyANCnRoZSByZWFz
b24gZm9yIDQwOTY/IEknbSBhIHJlYWxseSB1bnN1cmUgd2hhdCB5b3UgbmVlZCENCg0KQmVzdCBy
ZWdhcmRzLA0KDQpNYXJjdXMNCg0KRElTQ0xBSU1FUjogQW55IGF0dGFjaGVkIENvZGUgaXMgcHJv
dmlkZWQgQXMgSXMuIEl0IGhhcyBub3QgYmVlbiB0ZXN0ZWQgb3IgdmFsaWRhdGVkIGFzIGEgcHJv
ZHVjdCwgZm9yIHVzZSBpbiBhIGRlcGxveWVkIGFwcGxpY2F0aW9uIG9yIHN5c3RlbSwgb3IgZm9y
IHVzZSBpbiBoYXphcmRvdXMgZW52aXJvbm1lbnRzLiBZb3UgYXNzdW1lIGFsbCByaXNrcyBmb3Ig
dXNlIG9mIHRoZSBDb2RlLiBVc2Ugb2YgdGhlIENvZGUgaXMgc3ViamVjdCB0byB0ZXJtcyBvZiB0
aGUgbGljZW5zZXMgdG8gdGhlIFVIRCBvciBSRk5vQyBjb2RlIHdpdGggd2hpY2ggdGhlIENvZGUg
aXMgdXNlZC4gU3RhbmRhcmQgbGljZW5zZXMgdG8gVUhEIGFuZCBSRk5vQyBjYW4gYmUgZm91bmQg
YXQgaHR0cHM6Ly93d3cuZXR0dXMuY29tL3Nkci1zb2Z0d2FyZS9saWNlbnNlcy8uDQoNCk5JIHdp
bGwgb25seSBwZXJmb3JtIHNlcnZpY2VzIGJhc2VkIG9uIGl0cyB1bmRlcnN0YW5kaW5nIGFuZCBj
b25kaXRpb24gdGhhdCB0aGUgZ29vZHMgb3Igc2VydmljZXMgKGkpIGFyZSBub3QgZm9yIHRoZSB1
c2UgaW4gdGhlIHByb2R1Y3Rpb24gb3IgZGV2ZWxvcG1lbnQgb2YgYW55IGl0ZW0gcHJvZHVjZWQs
IHB1cmNoYXNlZCwgb3Igb3JkZXJlZCBieSBhbnkgZW50aXR5IHdpdGggYSBmb290bm90ZSAxIGRl
c2lnbmF0aW9uIGluIHRoZSBsaWNlbnNlIHJlcXVpcmVtZW50IGNvbHVtbiBvZiBTdXBwbGVtZW50
IE5vLiA0IHRvIFBhcnQgNzQ0LCBVLlMuIEV4cG9ydCBBZG1pbmlzdHJhdGlvbiBSZWd1bGF0aW9u
cyBhbmQgKGlpKSBzdWNoIGEgY29tcGFueSBpcyBub3QgYSBwYXJ0eSB0byB0aGUgdHJhbnNhY3Rp
b24uICBJZiBvdXIgdW5kZXJzdGFuZGluZyBpcyBpbmNvcnJlY3QsIHBsZWFzZSBub3RpZnkgdXMg
aW1tZWRpYXRlbHkgYmVjYXVzZSBhIHNwZWNpZmljIGF1dGhvcml6YXRpb24gbWF5IGJlIHJlcXVp
cmVkIGZyb20gdGhlIFUuUy4gQ29tbWVyY2UgRGVwYXJ0bWVudCBiZWZvcmUgdGhlIHRyYW5zYWN0
aW9uIG1heSBwcm9jZWVkIGZ1cnRoZXIuDQoNCk9uIDIxLjAzLjIyIDE1OjQxLCBzcCBoIHdyb3Rl
Og0KPg0KPiBCdXQgSSBuZWVkIHRvIGFkZCBzYW1wbGVzIHRvIGEgYnVmZmVyLiB3aGVuIDQwOTYg
c2FtcGxlIGlzIHJlY2VpdmVkIGZvciBibG9jaywgZG8gYW4gDQo+IG9wZXJhdGlvbiBsaWtlIGNv
cnJlbGF0ZSBhbmQgY29udm9sdXRpb24sIGFuZCBzbyBvbi4NCj4NCj4gQ2FuIHdlIHVzZSBSQU0g
aW4gYW4gUkZOT0MgYmxvY2sgdGhhdCBlbmFibGVzIHVzIHRvIHdvcmsgd2l0aCBzcGVjaWZpYyBj
b3VudCBzYW1wbGVzPz8NCj4gSXQgaXMgcG9zc2libGU/DQo+DQo+IGFueSBleGFtcGxlIG9yIGd1
aWRlIHRoYW5rcw0KPg0KPg0KPiBPbiBNb24sIE1hciAyMSwgMjAyMiBhdCA2OjAxIFBNIHNwIGgg
PHN0YWNrcHJvZ3JhbWVyQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+ICAgICBCdXQgSSBuZWVkIHRv
IGFkZCBzYW1wbGVzIHRvIGEgYnVmZmVyLiB3aGVuIDQwOTYgc2FtcGxlIGlzIHJlY2VpdmVkIGZv
ciBibG9jaywgZG8gYW4NCj4gICAgIG9wZXJhdGlvbiBsaWtlIGNvcnJlbGF0ZSBhbmQgY29udm9s
dXRpb24sIGFuZCBzbyBvbi4NCj4NCj4gICAgIENhbiB3ZSB1c2UgUkFNIGluIGFuIFJGTk9DIGJs
b2NrIHRoYXQgZW5hYmxlcyB1cyB0byB3b3JrIHdpdGggc3BlY2lmaWMgY291bnQgc2FtcGxlcz8/
DQo+ICAgICBJdCBpcyBwb3NzaWJsZT8NCj4NCj4gICAgIGFueSBleGFtcGxlIG9yIGd1aWRlIHRo
YW5rcw0KPg0KPiAgICAgT24gTW9uLCBNYXIgMjEsIDIwMjIgYXQgMToxNiBQTSBNYXJjdXMgTcO8
bGxlciA8bWFyY3VzLm11ZWxsZXJAZXR0dXMuY29tPiB3cm90ZToNCj4NCj4gICAgICAgICBIaSEN
Cj4NCj4gICAgICAgICA+IEluIEdudXJhZGlvIHdoZW4gd2Ugd2FudCB0byB3b3JrIHdpdGggc2Ft
cGxlcyBidWZmZXIgc2FtcGxlcyBpcyA0MDk2IC4uLg0KPg0KPiAgICAgICAgIE5vLCBpdCdzIG5v
dCEgR05VIFJhZGlvIGhhcyBhIHZhcmlhYmxlIHdvcmtsb2FkIGxlbmd0aCBhcHByb2FjaCwgc28g
eW91ICoqbXVzdA0KPiAgICAgICAgIG5vdCoqDQo+ICAgICAgICAgYXNzdW1lIGFueSBmaXhlZCBs
ZW5ndGggYnVmZmVyLiBFc3BlY2lhbGx5IG5vdCA0MDk2Lg0KPg0KPiAgICAgICAgID4gYnV0IGZv
ciBSRk5PQyB3ZSBmYWNlZMKgMzIgc2FtcGxlcy4uLi4uLi4uDQo+ICAgICAgICAgPiBIb3cgY2Fu
IGluY3JlYXNlZCBzYW1wbGVzwqBidWZmZXIgaW4gUkZOT0MgYmxvY2sgdG8gNDA5Ni4uLj8NCj4N
Cj4gICAgICAgICBZb3UgZG9uJ3QhDQo+DQo+ICAgICAgICAgQmVzdCByZWdhcmRzLA0KPg0KPiAg
ICAgICAgIE1hcmN1cw0KPiAgICAgICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+ICAgICAgICAgVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gICAgICAgICBUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+DQo+DQo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
