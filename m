Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 201DB3C6493
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 22:02:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E4B27384711
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 16:02:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rz0LAFlA";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 91AD9381306
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 16:01:43 -0400 (EDT)
Received: by mail-qk1-f179.google.com with SMTP id q190so19256960qkd.2
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 13:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=AjEpPcZQpSHdMXDPrU3coLj1iadDU9AB9YEnX5QPLao=;
        b=rz0LAFlArVSfuanYbV/BPMW1PiQb9dgbFt81Ts0EUO8Q3nxBsrOqRFW03C6J7X4Oex
         kGkwDuirTFflJ8UWg0gwv86KOsOdSWTzfyF8d6ZArCf1E3lTmueC2HPBKotV2Eg5oTZC
         tfXW0GbtjwlTThZ5M04XcYFvLw9uN0Q/3Pj7e6YJ6sx2NsUNfH6dSnWww9MP7tPARtuJ
         2YXoXiF9F29cN0iOnXnregnQd2vl/pCqiqJgbdUAowyrcioL4Uj6rELol3Z6meDgHqdq
         XFnJHqUExkwaxzlCangDrh+iVz0uy14sJpOu3bh35HAY7ymUvuhMiusaznH0/L+cSLrB
         lMiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=AjEpPcZQpSHdMXDPrU3coLj1iadDU9AB9YEnX5QPLao=;
        b=J61wjQpco+GkxUH9zWCm1nVgmTUSKOZ+882LB3BiAwQKqMhLAAFylTa1Jr+YQfg9wd
         6Fsa76chDWb340pvpCOsHEFmmyRvM8claCUSzyEqTFPXOkoxGv/S+0mMnO5LHpH9Oajo
         CQTdWueUZgve0E/QnpwCd95xb7Yk49J6JZBuY7a3/PBsn8OlzT4kHGwAeQFm0DRKOH+k
         KlCrtT0ebapW2EUcQ93N4oOW7e0Ov+OShOXpVwu4eIw4QnmhQVz0sLYPvkx8R53DsiLq
         n+klXEa6VIkFkjdyT5Hg/1iimOVNqLnwJuYeMcucNlBCC7Y9VB3RgZUkPrxPUJNqzq3A
         QOGw==
X-Gm-Message-State: AOAM530jHBaYnfmCzrbDcyEKTTsUuaYfeK0L+EsXiIKgGMLq/K7JNvnL
	h9RPXRlGmirg7IkFlzM2HHbaerbpBrQbMg==
X-Google-Smtp-Source: ABdhPJynk7syogQv9fJ7ug8JXqSUNbh497G/Uf1qudZWdd29GYhJh1PD65Y+GdApo9K83XGxKhHlKQ==
X-Received: by 2002:a05:620a:12b6:: with SMTP id x22mr405384qki.195.1626120102796;
        Mon, 12 Jul 2021 13:01:42 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id k24sm842510qkk.25.2021.07.12.13.01.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 13:01:42 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 12 Jul 2021 16:01:41 -0400
Message-Id: <706AA5F4-0033-4297-985B-0F8F8B554DB8@gmail.com>
References: <CAMHwfuhSj+b=UicdcQEufuWRmhUiOHgVFpBRNmhCaWwkcvVVGw@mail.gmail.com>
In-Reply-To: <CAMHwfuhSj+b=UicdcQEufuWRmhUiOHgVFpBRNmhCaWwkcvVVGw@mail.gmail.com>
To: "shachar J. brown" <shachar.brown@gmail.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 7TPRMZOJGDP3MSQLGPT2BDZGM774B7BM
X-Message-ID-Hash: 7TPRMZOJGDP3MSQLGPT2BDZGM774B7BM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "shachar J. brown via USRP-users" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USB Disconnects While running B210 on Intel Nuc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7TPRMZOJGDP3MSQLGPT2BDZGM774B7BM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5252139810467870742=="


--===============5252139810467870742==
Content-Type: multipart/alternative; boundary=Apple-Mail-0B431978-D77E-4394-9F7F-35C67824196C
Content-Transfer-Encoding: 7bit


--Apple-Mail-0B431978-D77E-4394-9F7F-35C67824196C
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

What does =E2=80=9Cdmesg=E2=80=9D have to say about it when this happens? Th=
ere=E2=80=99s usually a disconnect message with some surrounding context.=20=


Sent from my iPhone

> On Jul 12, 2021, at 3:44 PM, shachar J. brown <shachar.brown@gmail.com> wr=
ote:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> Yes indeed. original cable.
>=20
> BTW, additional information: Different ports have different durations befo=
re they crash.
> Specifically, ports on one side survive much longer than the other side.
> This holds while the ports share similar color and marking.
>=20
> BR,
> Steve
>=20
>=20
>=20
>> On Mon, Jul 12, 2021 at 10:37 PM Marcus D Leech <patchvonbraun@gmail.com>=
 wrote:
>> Are you using the Ettus supplied cable?
>>=20
>> Controllers will disconnect devices when they sense excess noise on the c=
able.=20
>>=20
>>=20
>>=20
>> Sent from my iPhone
>>=20
>>>> On Jul 12, 2021, at 3:27 PM, shachar J. brown <shachar.brown@gmail.com>=
 wrote:
>>>>=20
>>> =EF=BB=BF
>>> Hi Marcus,
>>>=20
>>> Thanks for the reply.
>>>=20
>>> I believe this is not a power problem as the B210 was fed with an extern=
al power.
>>> The problem still thrives, any further suggestions are more than welcome=
d.
>>>=20
>>> BR,
>>> Steve
>>>=20
>>>> On Thu, Jun 24, 2021 at 7:28 PM Marcus D. Leech <patchvonbraun@gmail.co=
m> wrote:
>>>> On 06/24/2021 02:31 AM, shachar J. brown wrote:
>>>>> Hi everyone,
>>>>>=20
>>>>> I am trying to run the given tx_samples_from_file example.
>>>>> Unfortunately, I keep receiving the uhd::usb_error, approximately 5-30=
 minutes into the run.
>>>>>=20
>>>>> Technical specs:
>>>>> USRP: B210.
>>>>> Host: Intel Nuc, Core i7, 8th gen.
>>>>> OS: Ubuntu 20
>>>>> UHD Version: 4.1.0
>>>>> USB Controler: XHCI (USB3).
>>>>>=20
>>>>> Error print:=20
>>>>> [ERROR] [TX-STREAM] The tx_stream timed out sending 5000 samples (4080=
 sent).
>>>>> [ERROR] [UHD] An unexpected exception was caught in a task loop.The ta=
sk loop will now exit, things may not work.EnvironmentError: IOError: usb rx=
8 transfer status: LIBUSB_TRANSFER_NO_DEVICE
>>>>> terminate called after throwing an instance of 'uhd::usb_error'
>>>>>   what():  RuntimeError: USBError -4: usb tx4 submit failed: LIBUSB_ER=
ROR_NO_DEVICE
>>>>> Aborted (core dumped)
>>>>>=20
>>>>> dmesg output:
>>>>> [19924.922965] usb 4-2: USB disconnect, device number 7
>>>>> [19925.195595] usb 4-2: new SuperSpeed Gen 1 USB device number 8 using=
 xhci_hcd
>>>>> [19925.217437] usb 4-2: LPM exit latency is zeroed, disabling LPM.
>>>>> [19925.220417] usb 4-2: New USB device found, idVendor=3D2500, idProdu=
ct=3D0020, bcdDevice=3D 0.00
>>>>> [19925.220422] usb 4-2: New USB device strings: Mfr=3D1, Product=3D2, S=
erialNumber=3D3
>>>>> [19925.220426] usb 4-2: Product: USRP B200
>>>>> [19925.220429] usb 4-2: Manufacturer: Ettus Research LLC
>>>>> [19925.220431] usb 4-2: SerialNumber: 31F80A2
>>>>>=20
>>>>> Is anyone familiar with this fault?
>>>>> I would appreciate any help on the matter.
>>>>>=20
>>>>> Thanks in advance,
>>>>> Steve
>>>>>=20
>>>>>=20
>>>> My guess is that your NUC USB controller is unhappy with power consumpt=
ion.    Are you using external power on the B2xx, or relying
>>>>   on USB3 power?
>>>>=20
>>>> Also, several years ago, there was an interaction between certain contr=
ollers and kernel power-saving features that caused the
>>>>   controller to disconnect stuff even if it was being used.  But I can'=
t for the live of me remember which driver parameter one
>>>>   had to change to fix this.  It has been several years since this was a=
 problem.
>>>>=20
>>>>=20
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-0B431978-D77E-4394-9F7F-35C67824196C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">What does =E2=80=9Cdmesg=E2=80=9D have to s=
ay about it when this happens? There=E2=80=99s usually a disconnect message w=
ith some surrounding context.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPh=
one</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 12, 2021, at 3=
:44 PM, shachar J. brown &lt;shachar.brown@gmail.com&gt; wrote:<br><br></blo=
ckquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D=
"ltr"><div dir=3D"ltr">Hi Marcus,<div><br></div><div>Yes indeed. original ca=
ble.</div><div><br></div><div>BTW, additional information: Different ports h=
ave different durations before they crash.</div><div>Specifically, ports on o=
ne side survive much longer than the other side.</div><div>This holds while t=
he ports&nbsp;share similar&nbsp;color and marking.</div><div><br></div><div=
>BR,</div><div>Steve</div><div><br></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 12, 2021 a=
t 10:37 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">pat=
chvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"auto">Are you using the Ettus supplied cable?<=
div><br></div><div>Controllers will disconnect devices when they sense exces=
s noise on the cable.&nbsp;</div><div><br></div><div><br><br><div dir=3D"ltr=
">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On=
 Jul 12, 2021, at 3:27 PM, shachar J. brown &lt;<a href=3D"mailto:shachar.br=
own@gmail.com" target=3D"_blank">shachar.brown@gmail.com</a>&gt; wrote:<br><=
br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<d=
iv dir=3D"ltr">Hi Marcus,<div><br></div><div>Thanks for the reply.</div><div=
><br></div><div>I believe this is not a power problem as the B210 was fed wi=
th an external power.</div><div>The problem still thrives, any further sugge=
stions are more than welcomed.</div><div><br></div><div>BR,</div><div>Steve<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Jun 24, 2021 at 7:28 PM Marcus D. Leech &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 06/24/2021 02:31 AM, shachar J.
      brown wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Hi everyone,</div>
        <div><br>
        </div>
        <div>I am trying to run the given tx_samples_from_file example.</div=
>
        <div>Unfortunately, I keep receiving the uhd::usb_error,
          approximately 5-30 minutes into the run.</div>
        <div><br>
        </div>
        <div><b>Technical specs:</b></div>
        <div>USRP: B210.</div>
        <div>Host: Intel Nuc, Core i7, 8th gen.</div>
        <div>OS: Ubuntu 20</div>
        <div>UHD Version: 4.1.0</div>
        <div>USB Controler: XHCI (USB3).</div>
        <div><br>
        </div>
        <div><b>Error print: <br>
          </b></div>
        <div>[ERROR] [TX-STREAM] The tx_stream timed out sending 5000
          samples (4080 sent).<br>
          [ERROR] [UHD] An unexpected exception was caught in a task
          loop.The task loop will now exit, things may not
          work.EnvironmentError: IOError: usb rx8 transfer status:
          LIBUSB_TRANSFER_NO_DEVICE<br>
          terminate called after throwing an instance of
          'uhd::usb_error'<br>
          &nbsp; what(): &nbsp;RuntimeError: USBError -4: usb tx4 submit fai=
led:
          LIBUSB_ERROR_NO_DEVICE<br>
          Aborted (core dumped)</div>
        <div><br>
        </div>
        <div><b>dmesg output:<br>
          </b></div>
        <div>[19924.922965] usb 4-2: USB disconnect, device number 7<br>
          [19925.195595] usb 4-2: new SuperSpeed Gen 1 USB device number
          8 using xhci_hcd<br>
          [19925.217437] usb 4-2: LPM exit latency is zeroed, disabling
          LPM.<br>
          [19925.220417] usb 4-2: New USB device found, idVendor=3D2500,
          idProduct=3D0020, bcdDevice=3D 0.00<br>
          [19925.220422] usb 4-2: New USB device strings: Mfr=3D1,
          Product=3D2, SerialNumber=3D3<br>
          [19925.220426] usb 4-2: Product: USRP B200<br>
          [19925.220429] usb 4-2: Manufacturer: Ettus Research LLC<br>
          [19925.220431] usb 4-2: SerialNumber: 31F80A2<br>
        </div>
        <div><br>
        </div>
        <div>Is anyone familiar with this fault?</div>
        <div>I would appreciate any help on the matter.</div>
        <div><br>
        </div>
        <div>Thanks in advance,</div>
        <div>Steve<br>
        </div>
        <div><br>
        </div>
        <br>
      </div>
    </blockquote>
    My guess is that your NUC USB controller is unhappy with power
    consumption.&nbsp;&nbsp;&nbsp; Are you using external power on the B2xx,=
 or relying<br>
    &nbsp; on USB3 power?<br>
    <br>
    Also, several years ago, there was an interaction between certain
    controllers and kernel power-saving features that caused the<br>
    &nbsp; controller to disconnect stuff even if it was being used.&nbsp; B=
ut I
    can't for the live of me remember which driver parameter one<br>
    &nbsp; had to change to fix this.&nbsp; It has been several years since t=
his
    was a problem.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></div></blockquote></div></div>
</div></blockquote></body></html>=

--Apple-Mail-0B431978-D77E-4394-9F7F-35C67824196C--

--===============5252139810467870742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5252139810467870742==--
