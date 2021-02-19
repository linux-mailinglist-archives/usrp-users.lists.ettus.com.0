Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBD931FDC2
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 18:21:34 +0100 (CET)
Received: from [::1] (port=55902 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD9T9-0005LV-It; Fri, 19 Feb 2021 12:21:31 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:37614)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lD9T5-0004gy-Mw
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 12:21:27 -0500
Received: by mail-ot1-f51.google.com with SMTP id s6so5753392otk.4
 for <usrp-users@lists.ettus.com>; Fri, 19 Feb 2021 09:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=1m0Bqo8k4L+bB0Bl2pqKgbG53B1Ze83Srn1TAM9rri0=;
 b=L1dHBJwGIqzaVLXgquhdGG5IeOZ1flp7/TYxgPml9G5z/mwhh+IxTRMBlKNB+WP1hG
 qpZZIjxbza+sXLxmtUJQg0glfzEJhOywzmo8Bl300utP/sROewUI26Zscq2tXmNuhyiJ
 gk0vhxSH2rHFK8eFybnOOyfYIjg2Jf86btffk79/L9+1Bn+z6NfhBLPTzRU5NYaqZOgS
 7Gs5tQXiIWieL22ygfyCYeROubBZfmGWb1vpfgIBUkfUF7/tXQ4yCK0ukFbf3leGiDDj
 dD2My819yBBYZ8qCELVMkaEMgMZHLwMO8sdLAxYAaerarH1hD71z/pe71ifVtqFc6Y2n
 Qd7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=1m0Bqo8k4L+bB0Bl2pqKgbG53B1Ze83Srn1TAM9rri0=;
 b=siRTdt+ABeGu2jdwwBL7vEYuM61tNXdaklacro48qG/WylKpV7JSDPXyYMTwVrRNQ4
 a019xYRAkC4f+AymyuIuIyhSPvY2ivuvyfphMXLiKk4JNW4PlQ6Bz/7cszwGdkeqoRx8
 hkQGPpVYv73PnxXpG6k3zsdJKh+FkGfPAeOrIBgjGwymcqz0bqftCkizqpf3j7zFmq8L
 eOIGaHaO65YzXlTN8RftTosKEyY52hnPD6MU5CmB1Z+qsh7nWS3mapG+gkbgIDYsAo7f
 FaPzZK9EoK2kPsoIHLKFKXGVbfuVQ99UM+1H2uUvwQ5d13g4EAEFhWsYoCeWAR2jUIz5
 VvWg==
X-Gm-Message-State: AOAM531nrRTWTF4GJ28Poo6bZS3TMgZoL5TgP6D/lylL8MCOKrf1HsmG
 6BZHGTtNom5xsCE1KNj0+PiBqGSobEJdOxmCtxUh0B0HlEc=
X-Google-Smtp-Source: ABdhPJzKhsK+lETNEOOeNW4DHhkDw73dYMTpoTdUSLlqwg0xyIcgbx+cU9V/hjO3m/DJWzKlSacEjjkoMUb9wCovaCU=
X-Received: by 2002:a9d:5503:: with SMTP id l3mr7604678oth.302.1613755245834; 
 Fri, 19 Feb 2021 09:20:45 -0800 (PST)
MIME-Version: 1.0
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <20210217172935.joprwj3f6rwdu3jo@barbe>
 <CAB__hTSncBC=XS1YvCoE1jip2kY607aWC2hrFUOYcPCq4V6+iA@mail.gmail.com>
 <20210218090858.serfuy4u67rmor6c@barbe>
 <CAB__hTRwpakb-Vu+Q98vp9MGUW9NgggV=-AmK+4OWc0rw6zTNg@mail.gmail.com>
 <20210218172348.5xjhxl3b3g5ptjnd@barbe>
 <CAB__hTQEGfMFSm8L1jV41d_WSradNM_RJdODcEkGYH27x29q3g@mail.gmail.com>
 <20210219112003.z2mthwtk3xjkrmdl@barbe>
 <CAB__hTQ2VeJ9nNwaO+_pEiih141V7OzdGfYf9xSKn7EYFgHHWA@mail.gmail.com>
 <20210219155945.6px2hffwz7nixtnx@barbe>
In-Reply-To: <20210219155945.6px2hffwz7nixtnx@barbe>
Date: Fri, 19 Feb 2021 12:20:34 -0500
Message-ID: <CAB__hTSggXFLZ=9zQhhsyxiuchsRDSvmWiVnqWBevRr57hp--g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
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

WWVzLCB0aGF0IGlzIG15IGJlc3QgZ3Vlc3MuICBEaWQgeW91IHRyeSBpdD8KCk9uIEZyaSwgRmVi
IDE5LCAyMDIxIGF0IDExOjAwIEFNIEPDqWRyaWMgSGFubm90aWVyIHZpYSBVU1JQLXVzZXJzCjx1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4KPiBIaSBSb2IsCj4KPiBPbiAxOS8w
Mi8yMSAwOTozMCwgUm9iIEtvc3NsZXIgd3JvdGU6Cj4gPiBZZXMsIEkganVzdCBkb3VibGUtY2hl
Y2tlZCBhbmQgbWluZSBpcyB3b3JraW5nLgo+ID4KPiA+IFNvLCBJIGp1c3QgcmUtY2hlY2tlZCB5
b3VyIGxpbmsgdG8gaXNzdWUgIzQwNi4gSW4gInN0ZXBzIHRvIHJlcHJvZHVjZSIsIEkKPiA+IG5v
dGljZWQgMiB0aGluZ3M6Cj4gPgo+ID4gICAgLSBPbiB0aGUgbmV4dC10by1sYXN0IGxpbmUsIHRo
ZSBnKysgY29tbWFuZCBkb2VzIG5vdCBpbmNsdWRlIHlvdXIgY3VzdG9tCj4gPiAgICBsaWJyYXJ5
IGFuZCBkb2VzIG5vdCBpbmNsdWRlIHRoaXMgbGluayBvcHRpb24uICBUaGUgRXR0dXMgZXhhbXBs
ZSBidWlsZHMKPiA+ICAgIHlvdXIgYmxvY2sgY29udHJvbGxlciBpbiBpdHMgb3duIHNoYXJlZCBs
aWJyYXJ5IC0gaXQgZG9lcyBub3QgYWRkIGl0IHRvIHRoZQo+ID4gICAgdWhkIHNoYXJlZCBsaWJy
YXJ5LiBTbywgeW91IG5lZWQgdG8gbGluayB3aXRoIGJvdGggdWhkIGFuZCB5b3VyCj4gPiAgICBy
Zm5vYy1leGFtcGxlIHNoYXJlZCBsaWJyYXJ5IChvciB3aGF0ZXZlciBpdCBpcyBuYW1lZCkuIEFu
ZCwgeW91IG5lZWQgdG8KPiA+ICAgIGhhdmUgdGhhdCBsaW5rIG9wdGlvbi4gIChhcyBhIHNpZGUg
bm90ZSwgd2hlbiB5b3UgYnVpbHQgdGhlIHJmbm9jLWV4YW1wbGUsCj4gPiAgICB0aGlzIGRpZCBi
dWlsZCB0aGUgaW5pdF9nYWluX2Jsb2NrLmNwcCBleGFtcGxlIGluIHRoZSBhcHBzIGZvbGRlciB3
aXRoIHRoaXMKPiA+ICAgIGxpbmsgb3B0aW9uIHNvIGlmIHlvdSB3ZXJlIHRvIHJ1biB0aGF0IGV4
YW1wbGUsIHlvdSBjb3VsZCBjb25maXJtIHRoYXQgdGhlCj4gPiAgICBibG9jayBJRCBpbiB0aGF0
IGV4YW1wbGUgaXMgIkdhaW4jMCIgcmF0aGVyIHRoYW4gIkJsb2NrIzAiLiBCdXQgc2luY2UgdGhp
cwo+ID4gICAgZXhhbXBsZSBkb2Vzbid0IHVzZSB0aGUgcmFkaW8sIHlvdSBjb3VsZG4ndCB1c2Ug
aXQgdG8gdmVyaWZ5IGFjdGlvbgo+ID4gICAgcHJvcGFnYXRpb24pLgo+Cj4gU28sIHRvIHN1bW1h
cmlzZToKPgo+IGcrKyAtZyAtbyB0ZXN0IHJmbm9jX3J4X3RvX2ZpbGUuY3BwIC1sYm9vc3RfcHJv
Z3JhbV9vcHRpb25zIC1sdWhkCj4KPiBkb2VzIG5vdCB3b3JrLAo+Cj4gZysrIC1nIC1vIHRlc3Qg
cmZub2NfcnhfdG9fZmlsZS5jcHAgLWxib29zdF9wcm9ncmFtX29wdGlvbnMgLWx1aGQgLWxyZm5v
Y19leGFtcGxlCj4KPiBkb2VzIG5vdCB3b3JrIGVpdGhlciwgYnV0Cj4KPiBnKysgLWcgLW8gdGVz
dCByZm5vY19yeF90b19maWxlLmNwcCAtbGJvb3N0X3Byb2dyYW1fb3B0aW9ucyAtbHVoZCAtV2ws
LS1uby1hcy1uZWVkZWQgLWxyZm5vY19leGFtcGxlCj4KPiB3b3Jrcy4KPgo+IEFtIEkgY29ycmVj
dD8KPgo+IFJlZ2FyZHMKPiAtLQo+Cj4gQ8OpZHJpYyBIYW5ub3RpZXIKPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
