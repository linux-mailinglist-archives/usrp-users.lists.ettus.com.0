Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3808B18BF22
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 19:13:53 +0100 (CET)
Received: from [::1] (port=38230 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEzfz-0001xG-Ns; Thu, 19 Mar 2020 14:13:51 -0400
Received: from mail-wm1-f54.google.com ([209.85.128.54]:37686)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jEzfv-0001YQ-4R
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 14:13:47 -0400
Received: by mail-wm1-f54.google.com with SMTP id d1so3476214wmb.2
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 11:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=BVJaB8Fh2TATXLTK0pUPk0a52a5AUHm37yQChpo73wM=;
 b=uD2W4jlBIgNwiEzf5qRXZLMZN7+U8jBKK3H6bJwpxLrpmfNXEIv95tGZKnZyK0hn9A
 LgDnKcGdPbgxiOdjUgkzAt6Dxq+rQ/KcdGlW6GEaXS1viXBmpD6Xec/QMsq5H7D4OEQc
 UsYy4cfYrSWunAnqXYyC7anJ4/Fplg+lLeyRkVvQ39V9pIiX8MGaO0aX83iEyqfEa/2x
 ad3gzuQvgzBxuOtnJPRn4c0TrwdtuI85H60PiM0qA2LZOcFBEkkA0OpcPtJfleRnX2Se
 yilvhvKPZg1MyLVv2rMjd9i8bI8iLhuiCcocvgCLg5thYAeGyjQMYCEfzneEaOQxRNU8
 Dyig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BVJaB8Fh2TATXLTK0pUPk0a52a5AUHm37yQChpo73wM=;
 b=lKM8PN/0FFbGkYs1AtsEWaLhlyOOfuoBrTxezd4L7SF0JNsW4re+ejXqnVNhJO7QBB
 H+bl8+wbntm7DrHOfczuBQ0CaZaUNutMS96122A+RxZvptfuZFdVrvfc+Wo/gLvtQ76T
 l1qP9d4JQ5sW8CnKJyNR/n31CiZ3yoMk6IAJKSO5oUEBwRFqWys9bv4CAginpYpGRgvp
 OJym4FGUr+7/Y9ipjcZZkVq7t2UP8cADPet/f5dXFKXfO2V9iVX4lSy+2jbpcO3BAD4d
 NDceMM15ht0YwVTWEoULLrLpgm/pujfDZBwgSZ3j55fc1IMKpJvotozPNke+MRlBFqMl
 QoVw==
X-Gm-Message-State: ANhLgQ2bD9Z72qeY0lsJEDkEcW+1SVApIp2kWohhVFzFWzpM6SWciGML
 yp2RsmZbRFlSZHevDsLh9EfkJyqpAVflOQ==
X-Google-Smtp-Source: ADFU+vs8Oep0T54FIjXdka+OCST7SSLYHJTJs/oNx/MX3x/awvQ33fwG9Wq4jDmRGI6xuYka5k58zA==
X-Received: by 2002:a7b:c185:: with SMTP id y5mr5111048wmi.179.1584641585708; 
 Thu, 19 Mar 2020 11:13:05 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-146.hsi.kabel-badenwuerttemberg.de. [46.223.163.146])
 by smtp.gmail.com with ESMTPSA id b80sm4383922wme.24.2020.03.19.11.13.04
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 11:13:05 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CACjmV_k87A4VzxoQm3h4fs8RAP=+3At9isCCzspzO+Awu+fARQ@mail.gmail.com>
Message-ID: <a5841ef5-b15b-54b4-d2ed-c2c54aa5850b@ettus.com>
Date: Thu, 19 Mar 2020 19:13:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CACjmV_k87A4VzxoQm3h4fs8RAP=+3At9isCCzspzO+Awu+fARQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Using DPDK with AQC107
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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

SGkgRGFtb24sCgp0aGlzIHNvdW5kcyBsaWtlIERQREsgaXMgd29ya2luZywgYnV0IHNvbWV0aGlu
ZydzIG5vdCAxMDAlIGNvcnJlY3RseQpjb25maWd1cmVkLiBXaGF0IGRvZXMgeW91ciBkcGRrLWlw
djQ9IGxpbmUgc2F5PwoKQmVzdCByZWdhcmRzLApNYXJjdXMKCgpPbiAxNi4wMy4yMCAyMDowMywg
Z3Vvd2FuZyBxaXUgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4gSGkgZXZlcnlvbmUsCj4gCj4gSSBh
bSB0cnlpbmcgdG8gY29ubmVjdCBteSBub3RlYm9vayB0byBYMzEwIHdpdGggYSB0aHVuZGVyYm9s
dCAzIHRvCj4gMTBHTkJhc2UtVCBtb2R1bGUsIHdoaWNoIGhhcyBhIEFRQzEwNyBjaGlycC4KPiBU
aGUgbm90ZWJvb2sgY2FuIGZpbmQgdGhlIFgzMTAgd2l0aG91dCBEUERLLiBCdXQgaXQgY291bGQg
bm90IGZpbmQgdGhlCj4gZGV2aWNlIHdpdGggRFBESy4gSXMgdGhlcmUgYW55IHN1Z2dlc3Rpb24/
Cj4gCj4gVUhEIFZlcnNpb246IDQuMCwgdGhlIG1hc3RlciBicmFuY2guCj4gRFBESzogMTguMTEg
KHN1cHBvcnRpbmcgQXF1YW50aWHigJlzIEFRdGlvbiBmYW1pbHkgb2YgY2hpcHNldHM6Cj4gQVFD
MTA3L0FRQzEwOC9BUUMxMDkgKQo+IFVidW50dTogMTguMDQKPiAKPiByb290QHNkcjp+IyBkcGRr
LWRldmJpbmQgLS1zdGF0dXMtZGV2IG5ldAo+IE5ldHdvcmsgZGV2aWNlcyB1c2luZyBEUERLLWNv
bXBhdGlibGUgZHJpdmVyCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KPiAwMDAwOjNjOjAwLjAgJ0FRQzEwNyBOQmFzZS1UL0lFRUUgODAyLjNieiBFdGhlcm5l
dCBDb250cm9sbGVyIFtBUXRpb25dCj4gODdiMScgZHJ2PXZmaW8tcGNpIHVudXNlZD1hdGxhbnRp
Ywo+IE5ldHdvcmsgZGV2aWNlcyB1c2luZyBrZXJuZWwgZHJpdmVyCj4gPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT0KPiAwMDAwOjAwOjFmLjYgJ0V0aGVybmV0IENvbm5lY3Rpb24g
KDcpIEkyMTktTE0gMTViYicgaWY9ZW5vMSBkcnY9ZTEwMDBlCj4gdW51c2VkPXZmaW8tcGNpICpB
Y3RpdmUqCj4gT3RoZXIgTmV0d29yayBkZXZpY2VzCj4gPT09PT09PT09PT09PT09PT09PT09Cj4g
MDAwMDo2ZjowMC4wICdEZXZpY2UgMjcyMycgdW51c2VkPXZmaW8tcGNpCj4gCj4gcm9vdEBzZHI6
fiMgdWhkX2ZpbmRfZGV2aWNlcyAtLWFyZ3M9dXNlX2RwZGs9MSxhZGRyPTE5Mi4xNjguNjAuMgo+
IFtJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDcuNC4wOyBCb29zdF8xMDY1MDE7
Cj4gVUhEXzQuMC4wLjAtNTA1LWcxMzkzNTUzZAo+IEVBTDogRGV0ZWN0ZWQgMTIgbGNvcmUocykK
PiBFQUw6IERldGVjdGVkIDEgTlVNQSBub2Rlcwo+IEVBTDogTXVsdGktcHJvY2VzcyBzb2NrZXQg
L3Zhci9ydW4vZHBkay9ydGUvbXBfc29ja2V0Cj4gRUFMOiBObyBmcmVlIGh1Z2VwYWdlcyByZXBv
cnRlZCBpbiBodWdlcGFnZXMtMTA0ODU3NmtCCj4gRUFMOiBQcm9iaW5nIFZGSU8gc3VwcG9ydC4u
Lgo+IEVBTDogVkZJTyBzdXBwb3J0IGluaXRpYWxpemVkCj4gRUFMOiBQQ0kgZGV2aWNlIDAwMDA6
MDA6MWYuNiBvbiBOVU1BIHNvY2tldCAtMQo+IEVBTDogwqAgSW52YWxpZCBOVU1BIHNvY2tldCwg
ZGVmYXVsdCB0byAwCj4gRUFMOiDCoCBwcm9iZSBkcml2ZXI6IDgwODY6MTViYiBuZXRfZTEwMDBf
ZW0KPiBFQUw6IFBDSSBkZXZpY2UgMDAwMDozYzowMC4wIG9uIE5VTUEgc29ja2V0IC0xCj4gRUFM
OiDCoCBJbnZhbGlkIE5VTUEgc29ja2V0LCBkZWZhdWx0IHRvIDAKPiBFQUw6IMKgIHByb2JlIGRy
aXZlcjogMWQ2YTo4N2IxIG5ldF9hdGxhbnRpYwo+IEVBTDogwqAgdXNpbmcgSU9NTVUgdHlwZSAx
IChUeXBlIDEpCj4gW0VSUk9SXSBbRFBES10gQ291bGQgbm90IGZpbmQgcm91dGUgdG8gZGVzdGlu
YXRpb24gYWRkcmVzcyAxOTIuMTY4LjYwLjIKPiBbRVJST1JdIFtYMzAwXSBYMzAwIE5ldHdvcmsg
ZGlzY292ZXJ5IGVycm9yIFJ1bnRpbWVFcnJvcjogRFBESzogQ291bGQKPiBub3QgZmluZCByb3V0
ZSB0byBkZXN0aW5hdGlvbiBhZGRyZXNzIDE5Mi4xNjguNjAuMgo+IE5vIFVIRCBEZXZpY2VzIEZv
dW5kCj4gRGV2aWNlIHdpdGggcG9ydF9pZD0wIGFscmVhZHkgc3RvcHBlZAo+IAo+IEJlc3QgcmVn
YXJkcywKPiBEYW1vbgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNl
cnNfbGlzdHMuZXR0dXMuY29tCg==
