Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEDAC3575
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2019 15:22:19 +0200 (CEST)
Received: from [::1] (port=54924 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iFI6b-0004DR-V5; Tue, 01 Oct 2019 09:22:17 -0400
Received: from mail-ed1-f49.google.com ([209.85.208.49]:33544)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <daniel.jepson@ettus.com>)
 id 1iFI6Y-00044R-6q
 for usrp-users@lists.ettus.com; Tue, 01 Oct 2019 09:22:14 -0400
Received: by mail-ed1-f49.google.com with SMTP id c4so11913841edl.0
 for <usrp-users@lists.ettus.com>; Tue, 01 Oct 2019 06:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=+m/IVa2YmaZA0FMgzLX9LrNWoGqzTV03bpr5r5SjgVs=;
 b=aOKtNeMG+i4WyUmB5ja8mlX6aPY+u6GOJa1NilCt0FAK0AiwuiNQ6gf3DRxY6Neaqf
 /chf38/zeAAMLk3v5W5OYRj5/mSyoeh+C8SDxybBpHJqfFUwPUrT2ucpFGvqD7a09TO1
 s9an6xdZc401Dl84Mj7ZzPXB5IqG26P40FUPm9pRstTZtKGX3Ch2WJ/H2HxuWKB0WDn0
 I70RIviKF4CTRsvkPq+lUOnA2DVq7hjTAwmFCVhJy5xkZW9nsrgCh4jdrba9f2LTXY16
 hX7J2SYrDABQ0tMQ8OWc6BfVQsPvaNF0DweAWuWJvfi6YnTzP3rQV73IbQe1CvPT/HMf
 NGoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=+m/IVa2YmaZA0FMgzLX9LrNWoGqzTV03bpr5r5SjgVs=;
 b=DDiluvdOlbvYiSCxDKLQ9F8E18BKZYe9D2ksAvJiHg3kEsH+vwinlgWXf/YklkvM/h
 8/guD2Xf4tK/NYl7lVuT2/hUzEtqw60MW6VB6NHr5ILVMH/dT1hKztZszmDNQTgZsirT
 53jbhZsWOxx6Bq34Y5lZxmzpFVtaqpGUL+0rYWem1U1sya/eZB5RZ+xh/1dWzsGq/vgy
 zD2BWhKEwYNtxgJSu55vI1DA1q7ZvW+Bxq+KEn1xXr6MQYp54cIz9N/XqldZqN5f2byk
 PVQEcgNEKjuyiaTNzSviXCymdcHuVlrmRCF7hwC/s3F4yunMKf3f7yEMlTZRt9Cm3R9E
 wGOg==
X-Gm-Message-State: APjAAAXpyUwuP9wjl/RvY48Y368RJm2puHoLEMPeDd8E4ycNXA+5rLta
 bW8iaOA9xgDOYoPZztE5GZ8E8QY09fmSuAC5PVgYNDNBOS8=
X-Google-Smtp-Source: APXvYqyJY+LSap+PfbsL13YSC2q1KsdWKvfvM/izjLXZiQ9uihQwynMFaEHPX21vIgzYjPVsuzG4URfWjvdxE+lNOGo=
X-Received: by 2002:a50:a57d:: with SMTP id z58mr25491709edb.115.1569936092581; 
 Tue, 01 Oct 2019 06:21:32 -0700 (PDT)
MIME-Version: 1.0
References: <f8f84407bde942e199e079c598b33d34@tudelft.nl>
 <8e4c35c4670641f1aa546146cda04961@tudelft.nl>
In-Reply-To: <8e4c35c4670641f1aa546146cda04961@tudelft.nl>
Date: Tue, 1 Oct 2019 08:21:22 -0500
Message-ID: <CA+Zwmn6N5Fcb3NvcLO7met=EeyWEOjB-hEFZqqhcaugoZF1wUg@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] One sample - 5 ns delay between the two RF
 signals/ X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Daniel Jepson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Jepson <daniel.jepson@ettus.com>
Content-Type: multipart/mixed; boundary="===============5790013386975809937=="
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

--===============5790013386975809937==
Content-Type: multipart/alternative; boundary="0000000000001e80410593d93b91"

--0000000000001e80410593d93b91
Content-Type: text/plain; charset="UTF-8"

Fabian, I had a hunch it was just the 3.3V part--thanks for clarifying!

Cherif, the DAC interface timing (and for that matter, the ADC timing)
should be fairly tight. What you're seeing is expected and matches the
numbers we designed it to. The FPGA constraints are intentionally tight to
provide some extra margin at the DAC. Since this is all in the same X310,
you could start by isolating the various components of the design using the
front-panel GPIO connector. Run a trigger from each of your custom blocks
to the GPIO and see if they line up on a scope. If they don't, then you
might have a baseband timing issue (with how timed commands are interacting
with your blocks). If they line up, then it points to a timing failure in
the DAC.

-Daniel



On Fri, Sep 27, 2019 at 12:33 PM Cherif Diouf via USRP-users <
usrp-users@lists.ettus.com> wrote:

> fabian,
>
>
> I have tested your solution, but the get_time_last_pps always gives me
> the expect value.
>
>
>
> Daniel, On a different point, the issue might be related to timing, here
> are some examples of  timing related to the DACs. The compilation is
> successful but the margin is very low, in the 10 ps order.
>
>
>
>
> Startpoint                     Endpoint                       Slack(ns)
>
>
> ----------------------------------------------------------------------------
> gen_db1/gen_pins[2].oddr/C     DB1_DAC_D2_N                   0.016
>
> gen_db1/gen_pins[2].oddr/C     DB1_DAC_D2_P                   0.016
>
> gen_db1/gen_pins[7].oddr/C     DB1_DAC_D7_N                   0.021
>
> gen_db1/gen_pins[7].oddr/C     DB1_DAC_D7_P                   0.021
>
> gen_db1/gen_pins[3].oddr/C     DB1_DAC_D3_N                   0.024
>
> gen_db1/gen_pins[3].oddr/C     DB1_DAC_D3_P                   0.024
>
>
>
> gen_db0/gen_pins[2].oddr/C     DB0_DAC_D2_N                   0.066
>
> gen_db0/gen_pins[2].oddr/C     DB0_DAC_D2_P                   0.066
>
> gen_db0/gen_pins[0].oddr/C     DB0_DAC_D0_N                   0.071
>
> gen_db0/gen_pins[0].oddr/C     DB0_DAC_D0_P                   0.071
>
> gen_db0/oddr_frame/C           DB0_DAC_FRAME_N                0.075
>
> gen_db0/oddr_frame/C           DB0_DAC_FRAME_P                0.075
>
> gen_db0/gen_pins[3].oddr/C     DB0_DAC_D3_N                   0.080
>
> gen_db0/gen_pins[3].oddr/C     DB0_DAC_D3_P                   0.080
>
> gen_db0/gen_pins[1].oddr/C     DB0_DAC_D1_N                   0.085
>
> gen_db0/gen_pins[1].oddr/C     DB0_DAC_D1_P                   0.085
>
>
>
> Best Regards
>
> Cherif
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 

Daniel Jepson

Digital Hardware Engineer

National Instruments



O: +1.512.683.6163

daniel.jepson@ni.com

--0000000000001e80410593d93b91
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+RmFiaWFuLCBJIGhhZCBhIGh1bmNoIGl0IHdhcyBqdXN0IHRoZSAzLjNW
IHBhcnQtLXRoYW5rcyBmb3IgY2xhcmlmeWluZyHCoDxkaXY+PGJyPjwvZGl2PjxkaXY+Q2hlcmlm
LCB0aGUgREFDIGludGVyZmFjZSB0aW1pbmcgKGFuZCBmb3IgdGhhdCBtYXR0ZXIsIHRoZSBBREMg
dGltaW5nKSBzaG91bGQgYmUgZmFpcmx5IHRpZ2h0LiBXaGF0IHlvdSYjMzk7cmUgc2VlaW5nIGlz
IGV4cGVjdGVkIGFuZCBtYXRjaGVzIHRoZSBudW1iZXJzIHdlIGRlc2lnbmVkIGl0IHRvLiBUaGUg
RlBHQSBjb25zdHJhaW50c8KgYXJlIGludGVudGlvbmFsbHkgdGlnaHQgdG8gcHJvdmlkZSBzb21l
IGV4dHJhIG1hcmdpbiBhdCB0aGUgREFDLiBTaW5jZSB0aGlzIGlzIGFsbCBpbiB0aGUgc2FtZSBY
MzEwLCB5b3UgY291bGQgc3RhcnQgYnkgaXNvbGF0aW5nIHRoZSB2YXJpb3VzIGNvbXBvbmVudHMg
b2YgdGhlIGRlc2lnbiB1c2luZyB0aGUgZnJvbnQtcGFuZWwgR1BJTyBjb25uZWN0b3IuIFJ1biBh
IHRyaWdnZXIgZnJvbSBlYWNoIG9mIHlvdXIgY3VzdG9tIGJsb2NrcyB0byB0aGUgR1BJTyBhbmQg
c2VlIGlmIHRoZXkgbGluZSB1cCBvbiBhIHNjb3BlLiBJZiB0aGV5IGRvbiYjMzk7dCwgdGhlbiB5
b3UgbWlnaHQgaGF2ZSBhIGJhc2ViYW5kIHRpbWluZyBpc3N1ZSAod2l0aCBob3cgdGltZWQgY29t
bWFuZHMgYXJlIGludGVyYWN0aW5nIHdpdGggeW91ciBibG9ja3MpLiBJZiB0aGV5IGxpbmUgdXAs
IHRoZW4gaXQgcG9pbnRzIHRvIGEgdGltaW5nIGZhaWx1cmXCoGluIHRoZSBEQUMuPC9kaXY+PGRp
dj48YnI+PC9kaXY+PGRpdj4tRGFuaWVsPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj48YnI+PC9k
aXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21h
aWxfYXR0ciI+T24gRnJpLCBTZXAgMjcsIDIwMTkgYXQgMTI6MzMgUE0gQ2hlcmlmIERpb3VmIHZp
YSBVU1JQLXVzZXJzICZsdDs8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20iIHRhcmdldD0iX2JsYW5rIj51c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7IHdy
b3RlOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJn
aW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIw
NCk7cGFkZGluZy1sZWZ0OjFleCI+DQoNCg0KDQoNCjxkaXYgZGlyPSJsdHIiPg0KPGRpdiBpZD0i
bV85MDk1NDMxNjU3NzU3MTkwMTg4Z21haWwtbV83OTc1MjQwNzgzMjY0ODg1OTEyZGl2dGFnZGVm
YXVsdHdyYXBwZXIiIHN0eWxlPSJmb250LXNpemU6MTJwdDtjb2xvcjpyZ2IoMCwwLDApO2ZvbnQt
ZmFtaWx5OkNhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWYiIGRpcj0ibHRyIj4NCjxwPmZhYmlh
biw8L3A+DQo8cD48YnI+DQo8L3A+DQo8cD5JIGhhdmUgdGVzdGVkIHlvdXIgc29sdXRpb24sIGJ1
dCB0aGUgPGZvbnQgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMHB0Ij5nZXRfdGlt
ZV9sYXN0X3Bwczwvc3Bhbj48L2ZvbnQ+IGFsd2F5cyBnaXZlcyBtZSB0aGUgZXhwZWN0IHZhbHVl
LjwvcD4NCjxwPjxicj4NCjwvcD4NCjxwPjxicj4NCjwvcD4NCjxwPjxmb250IHNpemU9IjIiPkRh
bmllbDwvZm9udD4sIE9uIGEgZGlmZmVyZW50IHBvaW50LCB0aGUgaXNzdWUgbWlnaHQgYmUgcmVs
YXRlZCB0byB0aW1pbmcsIGhlcmUgYXJlIHNvbWUgZXhhbXBsZXMgb2bCoCB0aW1pbmcgcmVsYXRl
ZCB0byB0aGUgREFDcy4gVGhlIGNvbXBpbGF0aW9uIGlzIHN1Y2Nlc3NmdWwgYnV0IHRoZSBtYXJn
aW4gaXMgdmVyeSBsb3csIGluIHRoZSAxMCBwcyBvcmRlci4NCjxicj4NCjwvcD4NCjxwPjxicj4N
CjwvcD4NCjxwPjxicj4NCjwvcD4NCjxwPjxicj4NCjwvcD4NCjxwPjwvcD4NCjxkaXY+U3RhcnRw
b2ludMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRW5kcG9pbnTCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBTbGFjayhucynCoMKgwqAg
wqA8YnI+DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPGJyPg0KZ2VuX2RiMS9nZW5fcGluc1syXS5vZGRy
L0PCoMKgwqDCoCBEQjFfREFDX0QyX07CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgMC4wMTbCoMKgwqDCoMKgwqDCoCDCoDxicj4NCmdlbl9kYjEvZ2VuX3BpbnNbMl0ub2Rkci9D
wqDCoMKgwqAgREIxX0RBQ19EMl9QwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDAuMDE2wqDCoMKgwqDCoMKgwqAgwqA8YnI+DQpnZW5fZGIxL2dlbl9waW5zWzddLm9kZHIvQ8Kg
wqDCoMKgIERCMV9EQUNfRDdfTsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAw
LjAyMcKgwqDCoMKgwqDCoMKgIMKgPGJyPg0KZ2VuX2RiMS9nZW5fcGluc1s3XS5vZGRyL0PCoMKg
wqDCoCBEQjFfREFDX0Q3X1DCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMC4w
MjHCoMKgwqDCoMKgwqDCoCDCoDxicj4NCmdlbl9kYjEvZ2VuX3BpbnNbM10ub2Rkci9DwqDCoMKg
wqAgREIxX0RBQ19EM19OwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDAuMDI0
wqDCoMKgwqDCoMKgwqAgwqA8YnI+DQpnZW5fZGIxL2dlbl9waW5zWzNdLm9kZHIvQ8KgwqDCoMKg
IERCMV9EQUNfRDNfUMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwLjAyNMKg
wqDCoMKgIDxicj4NCjwvZGl2Pg0KPHA+PC9wPg0KPHA+PGJyPg0KPC9wPg0KPHA+PGJyPg0KPC9w
Pg0KPHA+PC9wPg0KPGRpdj5nZW5fZGIwL2dlbl9waW5zWzJdLm9kZHIvQ8KgwqDCoMKgIERCMF9E
QUNfRDJfTsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwLjA2NsKgwqDCoMKg
wqDCoMKgIMKgPGJyPg0KZ2VuX2RiMC9nZW5fcGluc1syXS5vZGRyL0PCoMKgwqDCoCBEQjBfREFD
X0QyX1DCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMC4wNjbCoMKgwqDCoMKg
wqDCoCDCoDxicj4NCmdlbl9kYjAvZ2VuX3BpbnNbMF0ub2Rkci9DwqDCoMKgwqAgREIwX0RBQ19E
MF9OwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDAuMDcxwqDCoMKgwqDCoMKg
wqAgwqA8YnI+DQpnZW5fZGIwL2dlbl9waW5zWzBdLm9kZHIvQ8KgwqDCoMKgIERCMF9EQUNfRDBf
UMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwLjA3McKgwqDCoMKgwqDCoMKg
IMKgPGJyPg0KZ2VuX2RiMC9vZGRyX2ZyYW1lL0PCoMKgwqDCoMKgwqDCoMKgwqDCoCBEQjBfREFD
X0ZSQU1FX07CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMC4wNzXCoMKgwqDCoMKgwqDC
oCDCoDxicj4NCmdlbl9kYjAvb2Rkcl9mcmFtZS9DwqDCoMKgwqDCoMKgwqDCoMKgwqAgREIwX0RB
Q19GUkFNRV9QwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDAuMDc1wqDCoMKgwqDCoMKg
wqAgwqA8YnI+DQpnZW5fZGIwL2dlbl9waW5zWzNdLm9kZHIvQ8KgwqDCoMKgIERCMF9EQUNfRDNf
TsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwLjA4MMKgwqDCoMKgwqDCoMKg
IMKgPGJyPg0KZ2VuX2RiMC9nZW5fcGluc1szXS5vZGRyL0PCoMKgwqDCoCBEQjBfREFDX0QzX1DC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMC4wODDCoMKgwqDCoMKgwqDCoCDC
oDxicj4NCmdlbl9kYjAvZ2VuX3BpbnNbMV0ub2Rkci9DwqDCoMKgwqAgREIwX0RBQ19EMV9OwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDAuMDg1wqDCoMKgwqDCoMKgwqAgwqA8
YnI+DQpnZW5fZGIwL2dlbl9waW5zWzFdLm9kZHIvQ8KgwqDCoMKgIERCMF9EQUNfRDFfUMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwLjA4NcKgIDxicj4NCjwvZGl2Pg0KPGRp
dj48YnI+DQo8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KQmVz
dCBSZWdhcmRzDQo8cD48L3A+DQo8cD5DaGVyaWY8YnI+DQo8L3A+DQo8L2Rpdj4NCjwvZGl2Pg0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4NClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0PGJyPg0KPGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208
L2E+PGJyPg0KPGEgaHJlZj0iaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZv
L3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2Js
YW5rIj5odHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb208L2E+PGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2PjxiciBjbGVhcj0iYWxs
Ij48ZGl2Pjxicj48L2Rpdj4tLSA8YnI+PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+PHA+
PGEgbmFtZT0ibV85MDk1NDMxNjU3NzU3MTkwMTg4X1NpZ25hdHVyZVNhbml0aXplcl9TYWZlSHRt
bEZpbHRlcl9fTWFpbEF1dG9TaWciPjxzcGFuIHN0eWxlPSJjb2xvcjpibGFjayI+RGFuaWVsDQpK
ZXBzb248L3NwYW4+PC9hPjwvcD4NCg0KPHA+PHNwYW4gc3R5bGU9ImNvbG9yOmJsYWNrIj5EaWdp
dGFsIEhhcmR3YXJlIEVuZ2luZWVyPC9zcGFuPjwvcD4NCg0KPHA+PHNwYW4gc3R5bGU9ImNvbG9y
OmJsYWNrIj5OYXRpb25hbCBJbnN0cnVtZW50czwvc3Bhbj48L3A+DQoNCjxwPjxzcGFuIHN0eWxl
PSJjb2xvcjpibGFjayI+wqA8L3NwYW4+PC9wPg0KDQo8cD48c3BhbiBzdHlsZT0iY29sb3I6Ymxh
Y2siPk86ICsxLjUxMi42ODMuNjE2Mzwvc3Bhbj48L3A+DQoNCjxwPjxzcGFuIHN0eWxlPSJjb2xv
cjpibGFjayI+PGEgaHJlZj0ibWFpbHRvOmRhbmllbC5qZXBzb25AbmkuY29tIiB0YXJnZXQ9Il9i
bGFuayI+ZGFuaWVsLmplcHNvbkBuaS5jb208L2E+PC9zcGFuPjwvcD48L2Rpdj48L2Rpdj48L2Rp
dj4NCg==
--0000000000001e80410593d93b91--


--===============5790013386975809937==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5790013386975809937==--

