Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1807E3008BC
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jan 2021 17:33:30 +0100 (CET)
Received: from [::1] (port=33900 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2zNG-0001dO-3b; Fri, 22 Jan 2021 11:33:26 -0500
Received: from mail-ed1-f54.google.com ([209.85.208.54]:33222)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aaron.rossetto@ettus.com>)
 id 1l2zNC-0001Rg-BI
 for usrp-users@lists.ettus.com; Fri, 22 Jan 2021 11:33:22 -0500
Received: by mail-ed1-f54.google.com with SMTP id c6so7275756ede.0
 for <usrp-users@lists.ettus.com>; Fri, 22 Jan 2021 08:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=vo4v9EcA/M5qm2lNqB6CJq6+67E0dm3VSTOx9PxuI8M=;
 b=adllIsoktgySSE7xC58b4xIgROm4Bra12PPmimj0Z38dUYZdnCiN+s/gczQeF5Ft54
 V+Gg8zlXdHXYQESQRZzWx4EbPrsEAyGNSDOAzjIBQu7+EYi76ghj7g+Youwour12JCqG
 F4/9e2gtLjmlGh5ujMr01llAkWsJ5fQ1VLB4T9Hce0hLSRZIKQyaqPYFKfV8/jtj0tux
 /eGbERnFqUgiS2+UBxY96Fkme+ii0bufYUAwDD0hSupbKCULDW5RHskjDAHjDl+EfFsA
 0bC2mu3KYxXV+uywITL6EtRW0MgYLXLLiWYDMFQbevsTnT6tlmoi78cQduniPEwonY+f
 ySdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=vo4v9EcA/M5qm2lNqB6CJq6+67E0dm3VSTOx9PxuI8M=;
 b=IchrobKHjuJXIfDECul7D+naVQNgPqAOYIJ6vp9m9rqpAWNycuJ7dM1/EPxOcDsg9c
 WrzJhXorVE8gn8J58peOeypaWNysnrZnzO9DnGUB3zB4zUDppDpDH8sGt/6gUb+zs38d
 +sxkcOAeigIWT5fBye5HPFb6+2icUQEy5tnj6AAepLknJVpPNuyOBAje7S5mSDMZXJfT
 zrJfN6xvfontXv3surfLYIY1YZ+k0G7LBHdoj0FGnK+h7xkFArTY9aZSdsR29eVBcIFD
 9ijew6+xAbqtYsmqbjezLrE5gh1OSVMpKksYJGwwc0SUbjJpgQbxp+bnEN+o/rzEq8SF
 G6tg==
X-Gm-Message-State: AOAM53035sSed5DkX50wS6Zv28fXBYw2FBUEKIjsXds5ovIBoMpER49e
 buxwj8K2QoDqzIon3GbiYdAg2yQwrXt8efsq+/KzNF+sIilPlTih
X-Google-Smtp-Source: ABdhPJyGlmcb8Aikz6lxyYxIdLaSJAnKPn9Nctyx2myWejqVvxE3KvhDeM3T9lxKq+/i1WolanaLWL8y9rq+xrA+Qng=
X-Received: by 2002:aa7:d386:: with SMTP id x6mr3989469edq.194.1611333161086; 
 Fri, 22 Jan 2021 08:32:41 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT+gaOgFF2_ME+=bY9S21e_D-+XfCv7dH_qRmAZ-6h6oQ@mail.gmail.com>
 <CAB__hTTKkyz0fx9fGa_ePM9xZXHLcvYnbhsSCH3vYLA5z2G5Og@mail.gmail.com>
 <20210121224824.uajvcmmust7bgzfc@barbe>
In-Reply-To: <20210121224824.uajvcmmust7bgzfc@barbe>
Date: Fri, 22 Jan 2021 10:32:29 -0600
Message-ID: <CAAg5+MyoX=oAQKZ5T1siAfUt1=D2HM=-3eTQYVA_V=xC2F_b1w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] No streaming using OOT RFNoC Block in UHD4
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
From: Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Rossetto <aaron.rossetto@ettus.com>
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

T24gVGh1LCBKYW4gMjEsIDIwMjEgYXQgNDo0OSBQTSBDw6lkcmljIEhhbm5vdGllciB2aWEgVVNS
UC11c2Vycwo8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgoKPiBPbiBhIHNpZGUg
bm90ZToKPiBBcmUgd2UgZm9yY2VkIHRvIGltcGxlbWVudCBhIGN1c3RvbSBjb250cm9sbGVyIGZv
ciBlYWNoIFJGTm9DIGJsb2NrPwo+IEkgd2FzIGV4cGVjdGluZyB0aGF0IEkgY291bGQganVzdCB3
cml0ZSB0aGUgdmVyaWxvZyBwYXJ0Cj4gYW5kIHVzZSB0aGUgYmFzaWMgbm9jX2Jsb2NrX2Jhc2Ug
Y29udHJvbGxlciB0byBtYW5hZ2UgbXkgYmxvY2tzIGluIEMrKywKPiB1c2luZyByZWdzKCktPnBl
ZWszMi9wb2tlMzIgdG8gc2V0IG15IHJlZ2lzdGVycyBldGMuCj4gQnV0IGZyb20gYWJvdmUsIGl0
IHNlZW1zIHRoYXQgaXQgZG9lcyBub3QgZm9yd2FyZCB0aGUgaXNzdWVfc3RyZWFtX2NtZAo+IGJ5
IGRlZmF1bHQ/IElzIHRoYXQgY29ycmVjdD8KCkZvciB2ZXJ5IGJhc2ljIFJGTm9DIGJsb2NrIHBy
b3RvdHlwaW5nLCB5b3Ugc2hvdWxkIGJlIGFibGUgdG8gdXNlIHRoZQpkZWZhdWx0IG5vY19ibG9j
a19iYXNlIGltcGxlbWVudGF0aW9uIGlmIHlvdSBhcmUgd2lsbGluZyB0byBhY2Nlc3MKeW91ciBO
b0MgYmxvY2sncyBmdW5jdGlvbmFsaXR5IHZpYSByZWdpc3RlciByZWFkcyBhbmQgd3JpdGVzIGFu
ZCBkZWFsCndpdGggc29tZSBhZGRpdGlvbmFsIGNvbXBsaWNhdGlvbnMgd2hlbiBkZWFsaW5nIHdp
dGggbXVsdGlwbGUgY3VzdG9tClJGTm9DIGJsb2Nrcy4gWW91IHNob3VsZCBiZSBhYmxlIHRvIGdl
dCBhIHJlZmVyZW5jZSB0byB0aGUgYmxvY2sgYnkKY2FsbGluZyBnZXRfYmxvY2soKSBvbiB5b3Vy
IHJmbm9jX2Jsb2NrIG9iamVjdC0tdGhpcyBtZXRob2QgcmV0dXJucyBhCm5vY19ibG9ja19iYXNl
OjpzcHRyLgoKVGhlIGJpdCB0aGF0J3MgY29tcGxpY2F0ZWQgaXMgdGhhdCBnZXRfYmxvY2soKSB0
YWtlcyBhIGJsb2NrX2lkX3QsCndoaWNoIGNvbnNpc3RzIG9mIHRoZSBkZXZpY2UgbnVtYmVyLCBi
bG9jayBuYW1lLCBhbmQgaW5zdGFuY2UgKGUuZy4sCicwL015QmxvY2sjMCcgd2hlbiByZXByZXNl
bnRlZCBhcyBhIHN0cmluZykuIEdlbmVyYWxseSwgdGhlIG5hbWUgaXMKYXNzaWduZWQgdG8gdGhl
IGJsb2NrIGluIHRoZSBjdXN0b20gYmxvY2sgY29udHJvbGxlciB2aWEgdGhlClVIRF9SRk5PQ19C
TE9DS19SRUdJU1RFUl9ESVJFQ1QoKSBtYWNyby4gSWYgdGhlIGJsb2NrIGlzIG5vdApyZWdpc3Rl
cmVkIHZpYSB0aGlzIG1hY3JvLCBhcyBpcyB0aGUgY2FzZSB3aGVuIHVzaW5nIG5vY19ibG9ja19i
YXNlCmRpcmVjdGx5LCB0aGUgYmxvY2sgd2lsbCBiZSBhc3NpZ25lZCB0aGUgdW5pbWFnaW5hdGl2
ZSBidXQgdGVjaG5pY2FsbHkKY29ycmVjdCBuYW1lIG9mICdCbG9jaycuIFRodXMsIGlmIHlvdSB3
YW50IHRvIHVzZSBtdWx0aXBsZSBkaWZmZXJlbnQKY3VzdG9tIFJGTm9DIGJsb2NrcyB3aXRob3V0
IGN1c3RvbSBibG9jayBjb250cm9sbGVycyBpbiB0aGlzIG1hbm5lciwKeW91IHdpbGwgbmVlZCB0
byB2ZXJpZnkgdGhhdCB3aGVuIHlvdSBjYWxsIGdldF9ibG9jaygiMC9CbG9jayNuIiksIGl0Cmlz
IHRoZSBibG9jayB0aGF0IHlvdSBleHBlY3QuIFlvdSBjYW4gY2FsbCBnZXRfbm9jX2lkKCkgb24g
dGhlCm5vY19ibG9ja19iYXNlIHRoYXQgaXMgcmV0dXJuZWQgYW5kIGVuc3VyZSB0aGF0IHRoZSAz
Mi1iaXQgSUQgaW5kZWVkCnJlcHJlc2VudHMgdGhlIGJsb2NrIHRoYXQgeW91IHdpc2ggdG8gY29u
dHJvbC4KClVubGVzcyBzcGVjaWZpY2FsbHkgb3ZlcnJpZGRlbiwgdGhlIGRlZmF1bHQgYmVoYXZp
b3Igb2YgYQpub2NfYmxvY2tfYmFzZS1kZXJpdmVkIG9iamVjdCwgSSBiZWxpZXZlLCBpcyB0byBm
b3J3YXJkIGFjdGlvbnMKKHN0cmVhbSBjb21tYW5kcykgdXNpbmcgdGhlIE9ORV9UT19PTkUgZm9y
d2FyZGluZyBwb2xpY3ksIHdoaWNoIG1lYW5zCnRvIGZvcndhcmQgdGhlIGFjdGlvbiB0byB0aGUg
c2FtZSBwb3J0IG9uIHRoZSBvcHBvc2l0ZSBlZGdlIChzbyB0bwpvdXRwdXQgcG9ydCAjTiBpZiB0
aGUgYWN0aW9uIGlzIHJlY2VpdmVkIG9uIGlucHV0IHBvcnQgI04sIGFuZCB2aWNlCnZlcnNhKS4g
Q29uc3VsdCB0aGUgZG9jdW1lbnRhdGlvbiBvZiB1aGQ6OnJmbm9jOjpub2RlX3QgYW5kCmZvcndh
cmRpbmdfcG9saWN5X3QgZm9yIG1vcmUgZGV0YWlscy4KCkJlc3QgcmVnYXJkcywKQWFyb24KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1
cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
