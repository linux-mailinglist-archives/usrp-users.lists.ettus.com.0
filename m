Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C74C06AD495
	for <lists+usrp-users@lfdr.de>; Tue,  7 Mar 2023 03:23:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7EEFB385339
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 21:23:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678155799; bh=oVSDI7KYgGhCRy+uXyLXU52CGSLhGBzb1rB6Qh3YZdU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=FfWVbz6IFxAHjrlK0IVcBwZ7xxFZF+sNFe1iK70iMAYFUktzGp7GVTvQ/qtDjdFD7
	 ZG0h+AklkLQyqg36fRuOYX4jAAVV0YsG87kDpOcsUEW7SZ8UZcECJs9qg2WjMeYdi4
	 YRL9R5GjcA0xLiUT/886D2UJUNNMloGKa7iWJip4a8nlqqk7QS+A4Lrbq0AEMXVzLE
	 9zBM3ozLinVDrZCguOAq/5zHQs1nfNaDeFd8corBzJiYiJRY1AmZyGgTPU7+5Aw72C
	 +E6rab0MG/IP82GDUKVBSg2QeEq5o8bV266o1rZW3cYVA6vdYJetUHlbgnCnw2V5ly
	 dBDqf5NNqAtQA==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 11E203852DD
	for <usrp-users@lists.ettus.com>; Mon,  6 Mar 2023 21:22:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="ncLqFHRP";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id c19so12945385qtn.13
        for <usrp-users@lists.ettus.com>; Mon, 06 Mar 2023 18:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1678155764;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lyCebUMVafXHEv/Fe8rl4hY0J/HnrLPIZQhuFmZFnCM=;
        b=ncLqFHRPif4b06uuNztVIpJ5+6j0AikvokobjYcl/WSJOQ+wiuRci+efPkefGpS2HD
         /Y3D730bkM01TF73P+3OXcP5rF5vrjZoI0VNhnLCiHBkQCSQkhUbu8bFAhyv35M9VsP7
         RVb52DjQW/0hNnJ3zlP0N/Rj6g6dE56cLS8iCwkI9k0H9+uYEmwzxwOk1Yx4t+MuVNO8
         GGgAUObjmvNtaWjkbQQi+7Sa+hulrk9JVpw3TYq/wPJMOAHliiISOZ0E1vz3X9yU7RmA
         4CRFE4fWvnXM/LW/VY/0zOQv7lVC/l+ZGa9/A09+S+G43t/R+HbbOeF5wTQy17lrse1J
         tycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678155764;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lyCebUMVafXHEv/Fe8rl4hY0J/HnrLPIZQhuFmZFnCM=;
        b=yqrWEANcRqXhQdZjFjkz+Vvcq0ghPniUMljYdEeyr+Z/KWo1h74EFEPvdOCJWhcXG5
         UOxeLTn4SDd0WM1/3lE7dTOs0dtR7x/DhrbaN8/KUDtZNa2GijWeUUIQQnZAoper1eyt
         gRftZ8AjMPQCyVfgPIcMeIj5Cumq7qA+JHTEGU4bkx5l9zFBaR0kzUM453Jj52M5UhTX
         CvwqhVEPKi5c2pW5f8iVE0GS4t3TC1fqzjx6VazaGDaO/Mh7vBbkZFF/ufUE3ZihDS5t
         VKAKBcrac0Np0oCc5ShTUfzm+YEdtxGdHg46QHZGz++7sS29XmVrkkP1SWaCHA3jac3D
         hxrQ==
X-Gm-Message-State: AO0yUKXQPRwwLyRAUfgCppF7ZH+fZLZ+T7qKLzWCH2p7jDiEXwVMFA+t
	AcmuVcKzT2YU7pjOqpfngZfiniLv587KvAC9x+Kaih6A
X-Google-Smtp-Source: AK7set/OuvevCmbDzTYIng0LRBnfsxJ4ZfjqziKtqB6vYefJs8WF5MoPvqizOP4q3Ua4Dtv6t4J1u6p9bM1zJaIn61g=
X-Received: by 2002:ac8:5e0a:0:b0:3bf:d1e1:aaf4 with SMTP id
 h10-20020ac85e0a000000b003bfd1e1aaf4mr3770924qtx.8.1678155764295; Mon, 06 Mar
 2023 18:22:44 -0800 (PST)
MIME-Version: 1.0
References: <CAPY8uVNRaqfjD=+a4wWfFPTAR5JiKfpkiGpru7aN48gVei=e-A@mail.gmail.com>
 <!&!AAAAAAAAAAAuAAAAAAAAADk5w6jZ0HRBqbYEaqPE+5YBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAAYa+0KIwYNRrN9iuP4xuCTAQAAAAA=@tlrnet.eu>
 <64195ea3-7f1c-4f73-32e0-dbcdee305b1b@gmail.com> <CAPY8uVODoepSuoMxL8zW9o=1ug3hBgtkFha4zaPfFv0P=W_qfw@mail.gmail.com>
 <dc19b613-52db-1929-bfe4-870ac06abe8a@ettus.com> <CAPY8uVNykOusBvhU3qOsfZc-Md0_TCB5gmEOnooLWiFCXEf1ag@mail.gmail.com>
 <CAPY8uVMysdDuovR15fnX4cKNiS5tMP47Z5yYf03h3Smn+HFWmg@mail.gmail.com>
 <bc4e7c60-5b80-8025-ede0-342180837eb8@gmail.com> <CAPY8uVPCyBvBcpdSHAUyJe1488kvx99f5bLBK731DYnrn+NoKw@mail.gmail.com>
 <cfd3a956-24af-f8f1-5a17-b7ca21b1f25a@gmail.com> <CAPY8uVN+QOkiZx=uCbmeJ1+K74FcjGT7aUeSY2-=WLGLj0NSaQ@mail.gmail.com>
 <dbe3f5ca-0a7e-9d41-bb9d-35dfeb72841a@gmail.com> <CAPY8uVMnbo=wQp-e1AK6NOY_vW-1mD-bkU2ScczNdsHfyo0n3Q@mail.gmail.com>
 <bda192cb-74f8-da5f-536e-11c287681ea6@gmail.com>
In-Reply-To: <bda192cb-74f8-da5f-536e-11c287681ea6@gmail.com>
From: Michael West <michael.west@ettus.com>
Date: Mon, 6 Mar 2023 18:22:33 -0800
Message-ID: <CAM4xKrq2Hnqr0U2fZMLZc4Ce+tLYd11zAe1kdX+4QvZimoCxoQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 5BGGXYDWYHLU2FT3IJ47R7EPYXNXMG4U
X-Message-ID-Hash: 5BGGXYDWYHLU2FT3IJ47R7EPYXNXMG4U
X-MailFrom: michael.west@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Dor Ratz <dorratz12@gmail.com>, mmueller@gnuradio.org, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Eduard Sivolenko <eduard.sivolenko@ni.com>, derek.mckay@utu.fi, claudio.franchini@tlrnet.eu
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Spurs in UBX-160 Daughterboard with USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5BGGXYDWYHLU2FT3IJ47R7EPYXNXMG4U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5635093263464869520=="

--===============5635093263464869520==
Content-Type: multipart/alternative; boundary="000000000000357da105f646161b"

--000000000000357da105f646161b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dor,

There are 2 arguments that can control the integer-N step size:  the
int_n_step tune arg and the dboard_clock_rate device arg.  The int_n_step
tune arg will explicitly change the step size by changing the R divider
value, which will break phase coherency between channels.  The
'dboard_clock_rate' value in the device args controls the reference clock
rate, which will keep the R divider set to 1 and support phase coherency
between channels.  Both will change the PFD frequency for the PLL.  The UBX
was designed for a PFD frequency of 50 MHz, which is why 50 MHz is the
default reference clock rate and the default R value is 1.  Reducing the
PFD frequency will result in more phase noise.  My recommendation is to set
the 'mode_n=3Dinteger' in the tune args, let the DSP tuning take care of th=
e
offset by leaving the DSP tuning policy to the default (POLICY_AUTO), and
use the highest dboard_clock_rate possible (up to 50 MHz).  The highest
'dboard_clock_rate' can be achieved based on the required bandwidth of the
application by using the formula:

dbaord_clock_rate =3D (160 MHz - bandwidth) / 2

I hope this helps.

Best regards,
Michael E. West

On Mon, Mar 6, 2023 at 3:07=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmail=
.com>
wrote:

> On 06/03/2023 17:13, Dor Ratz wrote:
>
> Hey,
>
> Thanks a lot.
>
> *Several questions after thinking about it:*
>
>
> 1. Do you mean R&D of Ettus or GNURadio? Can you address me to the
> relevant email address?
>
> This thread really belongs on the usrp-users mailing list now, rather tha=
n
> discuss-gnuradio, i have copied usrp-users, and
>   removed discuss-gnuradio.
>
>
>
>
>
> 2. Let me see if I get it right for USRP X310 with UBX-160:
>
>
>    - Motherboard clock =3D MCR  =3Dmaster_clock_rate  =3D main clock rate=
 =3D
>    default value is 200MHz. The 10MHz REFCLK is used to set it.
>    - Daughterboard Clock Rate in Hz =3D dboard_clock_rate =3D default val=
ue
>    is 50MHz, need to change it to 20MHz for center frequencies under 1GHz=
 do
>    decrease spurs.
>    This is actually the clock that the motherboard injects into the
>    daughterboard , i.e it is the reference clock of the MAX2871 PLL which=
 is
>    on the daughterboard.
>    - According to this link
>    <http://www.radio-science.net/2017/12/adventures-in-usrp-tuning.html>,
>    if I set "mode_n=3Dinteger","int_n_step=3D100e3", in Device Address pa=
rameter
>    in USRP Sink block, then the frequency resolution on the PLL is:
>    frequency resolution [Hz] =3D int_n_step [Hz] =3D dboard_clock_rate [H=
z] /
>    (R divider  [-])
>
>    For example:
>    100e3 [Hz] =3D 50e6 [Hz] / 500
>
>    So ->* the frequency resolution of the PLL is set by the "int_n_step"
>    parameter* -> it calculates the R divider [-] in the PLL relating to
>    dboard_clock_rate and desired int_n__step.
>    I guess that the result must be in the range of allowed PLL's R
>    divider values from 1 to 1023.
>
> 3.   Do I must set the  "int_n_step" parameter as follows?
>
> 4.  Does the frequency resolution range from 50MHz when R divider=3D 1[-]=
 up
> to 0.05[MHz] when R divider =3D 1000[-] ?
>
> Referring to this sentence in max2871 PLL datasheet
> <https://www.analog.com/media/en/technical-documentation/data-sheets/max2=
871.pdf>
> :
> ""The minimum R counter divide ratio is 1, and the maximum divide ratio i=
s
> 1023"
>
>
> 5. Where can I find the relevant source code? I've looked here
> <https://github.com/EttusResearch/uhd> but I'm not sure where the
> daughterboard code/relevant code is.
>
> Thanks
> Dor
>
>
> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=91=
=D7=B3, 6 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-19:10 =D7=9E=D7=90=D7=AA =E2=
=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F <=E2=80=AA
> patchvonbraun@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>
>> On 06/03/2023 08:54, Dor Ratz wrote:
>>
>> Hey Marcus,
>>
>> Thanks a lot.
>>
>> I'm using external 10 MHz reference clock (REFCLK) with 1e-12[Hz]
>> frequency resolution -> it feeds my PLL in the UBX-160 daughterboard in =
the
>> X310 USRP.
>>
>> The REFCLCK input to the X310 is used to control the master-clock(s) on
>> the motherboard, which, in turn produce clocks for
>>   the daughtercards--but the daughtercards never see your external clock
>> directly.
>>
>>
>> So, *when defining "mode_n=3Dinteger"* in the Device Address parameter o=
f
>> the UHD: USRP Sink block in GNURadio to set PLL in integer-N mode, *what
>> is exactly R-DIVIDER=3D reference divider of the PLL*?
>>
>> I've looked in the PLL (max2871) datasheet:
>>
>> https://www.analog.com/media/en/technical-documentation/data-sheets/max2=
871.pdf
>>
>> According to it:
>> "The minimum R counter divide ratio is 1, and the maximum divide ratio i=
s
>> 1023"
>>
>> I understand that if for example, the R counter=3D(R-DIVIDER)=3D1000 -> =
the
>> frequency resolution is 10MHz/1000 =3D 0.01MHz=3D 10KHz, correct?
>>
>> But I don't know what is the R-DIVIDER chosen in the PLL with the
>> settings in gnuradio.
>>
>> Thanks,
>>
>> Dor
>>
>> You'd have to go looking through the source code.  Unless someone from
>> R&D happens to know off the top of their heads.
>>   10 years ago, I kept all of this in my head--when there were FAR fewer
>> products to keep track of and the codebase was
>>   more modest.
>>
>>
>>
>>
>>
>>
>>
>>
>> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=94=
=D7=B3, 2 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-21:55 =D7=9E=D7=90=D7=AA =E2=
=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F <=E2=80=AA
>> patchvonbraun@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>
>>> On 02/03/2023 13:09, Dor Ratz wrote:
>>>
>>> Hey,
>>>
>>> Do you know how to assess the RF PLL resolution in integer-N mode?
>>>
>>> I've looked in ANALOG max2871 PLL datasheet - not sure I found the
>>> answer there.
>>>
>>> https://www.analog.com/media/en/technical-documentation/data-sheets/max=
2871.pdf
>>>
>>> The Ettus team is CC here too - it will be helpful to know what you
>>> suggest.
>>>
>>> Thanks,
>>> Dor
>>>
>>> It will depend on the REFCLK that is being used by that board (I do not
>>> happen to know off the top of my head), and by
>>>   whatever flexibility in reference divider the PLL has.
>>>
>>> In an Integer-N PLL (and you can spend quite a bit of time learning how
>>> PLL synthesizers work online), the "step size" is
>>>   dependent on the REFCLK, which itself may have a divider on it.  So,
>>> let's say your REFCLK is 10MHz and there's a divider
>>>   that can divide the reference clock by up to 10000, then your minimum
>>> step size is 1kHz.   This is in tension with the
>>>   fact that having a high ratio between the desired frequency and the
>>> reference frequency tends to create signal-quality issues,
>>>   like, as I recall, phase noise.  But I'd research the datasheet and
>>> the overall concept of PLL synthesis.
>>>
>>> My recollection on the X310 is that the reference-clock frequency is
>>> 100MHz, but that's just a hazy memory.
>>>
>>>
>>>
>>>
>>>
>>> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=
=D7=B3, 1 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-21:10 =D7=9E=D7=90=D7=AA =E2=
=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F <=E2=80=AA
>>> patchvonbraun@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>
>>>> On 01/03/2023 13:14, Dor Ratz wrote:
>>>>
>>>> Hey Marcus, How are you?
>>>>
>>>> Not sure if you got my email.
>>>>
>>>> Do you know anyway I can change transmitted frequency using PMT messag=
e
>>>> when doing your solution?
>>>>
>>>>
>>>> In addition, something that seemed to help me:
>>>>
>>>> I used this:
>>>>
>>>>
>>>> https://lists.gnu.org/archive/html/discuss-gnuradio/2011-09/msg00309.h=
tml
>>>>
>>>>
>>>> In the USRP Sinc block, in center frequency parameter, I've put this:
>>>>
>>>> uhd.tune_request(target_freq=3D1003e6, dsp_freq=3D0,
>>>> dsp_freq_policy=3Duhd.tune_request.POLICY_MANUAL)
>>>>
>>>>
>>>> With this, the transmitted 1003MHz signal is cleaner and the spur is
>>>> now further away at 16KHz offset with amplitude of 60dBc below the sig=
nal.
>>>>
>>>> This alone cleans the spectrum!
>>>>
>>>> In addition, I type "mode_n=3Dinteger" in the
>>>> Device Address parameter of the UHD: USRP Sink block, but it doesn't
>>>> seem to affect. The tuning without DSP correction in the FPGA seems to=
 just
>>>> be sufficient to clean the spectrum.
>>>>
>>>> Why is that? Do you recommend using something else?
>>>>
>>>> Thanks
>>>>
>>>> Dor
>>>>
>>>> Note that only works if the underlying RF PLL has enough "resolution"
>>>> to make that work--particularly in integer-N mode.
>>>>
>>>> I'm surprised that the DDC/DUC have such significant "close in"
>>>> spurs.    I don't know if there's anyone from the R&D team
>>>>   on here who can authoritatively comment, but this is a bit of a
>>>> surprise.
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=
=91=D7=B3, 27 =D7=91=D7=A4=D7=91=D7=A8=D7=B3 2023 =D7=91-15:08 =D7=9E=D7=90=
=D7=AA =E2=80=AADor Ratz=E2=80=AC=E2=80=8F <=E2=80=AA
>>>> dorratz12@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>
>>>>> Hi Marcus,
>>>>>
>>>>> Can I pass the desired center frequency with a PMT message?
>>>>> I want to dynamically change the transmitted center frequency of UHD:
>>>>> USRP Sink block.
>>>>>
>>>>> So static frequency in the block is not sufficient.
>>>>>
>>>>> Thanks
>>>>> Dor
>>>>>
>>>>> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=
=91=D7=B3, 27 =D7=91=D7=A4=D7=91=D7=A8=D7=B3 2023 =D7=91-13:44 =D7=9E=D7=90=
=D7=AA =E2=80=AAMarcus M=C3=BCller=E2=80=AC=E2=80=8F <=E2=80=AA
>>>>> marcus.mueller@ettus.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>>
>>>>>> Hi Dor,
>>>>>>
>>>>>> >  1. How to change the to integer_n tuning? Should I just type
>>>>>> "mode_n=3Dinteger" in the
>>>>>> >     Device Address parameter of the UHD: USRP Sink block in the gr=
c?
>>>>>>
>>>>>> yes. Or, better, instead of just tuning to the target frequency, you
>>>>>> can pass a
>>>>>> uhd.tune_request_t to uhd_usrp_{sink,source}.set_center_frequency,
>>>>>> like this:
>>>>>>
>>>>>> my_uhd_block.set_center_frequency(uhd.tune_request_t(
>>>>>>                target_freq =3D 2.4e9,
>>>>>>                args=3D"mode_n=3Dinteger"))
>>>>>>
>>>>>> (you can also use a uhd.tune_request_t in the RF frequency fields of
>>>>>> the GRC block)
>>>>>>
>>>>>> Note that you're probably best off using tune_request_t anyway, as i=
t
>>>>>> allows you to tune
>>>>>> your LO far away from your band of interest, given the analog
>>>>>> bandwidth allows for that,
>>>>>> using `target_freq=3D` and `rf_freq` or `dsp_freq`.
>>>>>>
>>>>>> For more information on tuning, see the UHD manual [1]
>>>>>>
>>>>>> >  2. How to know for sure what the mode(integer of fractional) of
>>>>>> the NCO is? Can I print
>>>>>> >     its status/get it somehow?
>>>>>>
>>>>>> looking at the UHD source code: the routines responsible for tuning
>>>>>> just themselves check
>>>>>> for "mode_n" being set to "integer" in the device or tune request
>>>>>> arguments.
>>>>>>
>>>>>> Best regards,
>>>>>> Marcus
>>>>>>
>>>>>> [1] https://files.ettus.com/manual/page_general.html#general_tuning
>>>>>>
>>>>>
>>>>
>>>
>>
>

--000000000000357da105f646161b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Dor,</div><div><br></div><div>There are 2 argument=
s that can control the integer-N step size:=C2=A0 the int_n_step tune arg a=
nd the dboard_clock_rate device arg.=C2=A0 The int_n_step tune arg will exp=
licitly change the step size by changing the R divider value, which will br=
eak phase coherency between channels.=C2=A0 The &#39;dboard_clock_rate&#39;=
 value in the device args controls the reference clock rate, which will kee=
p the R divider set to 1 and support phase coherency between channels.=C2=
=A0 Both will change the PFD frequency for the PLL.=C2=A0 The UBX was desig=
ned for a PFD frequency of 50 MHz, which is why 50 MHz is the default refer=
ence=C2=A0clock rate and the default R value is 1.=C2=A0 Reducing the PFD f=
requency will result in more phase noise.=C2=A0 My recommendation is to set=
 the &#39;mode_n=3Dinteger&#39; in the tune args, let the DSP tuning take c=
are of the offset by leaving the DSP tuning policy to the default (POLICY_A=
UTO), and use the highest dboard_clock_rate possible (up to 50 MHz).=C2=A0 =
The highest &#39;dboard_clock_rate&#39; can be achieved based on the requir=
ed bandwidth of the application by using the formula:</div><div><br></div><=
div>dbaord_clock_rate =3D (160 MHz - bandwidth) / 2</div><div><br></div><di=
v>I hope this helps.</div><div></div><div></div><div><br></div><div>Best re=
gards,</div><div>Michael E. West</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 6, 2023 at 3:07=E2=80=AFPM Marc=
us D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
 =20
   =20
 =20
  <div>
    <div>On 06/03/2023 17:13, Dor Ratz wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"rtl">
        <div dir=3D"ltr">Hey,=C2=A0</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Thanks a lot.=C2=A0</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr"><u>Several questions after thinking about it:</u><=
/div>
      </div>
    </blockquote>
    <blockquote type=3D"cite">
      <div dir=3D"rtl">
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">1. Do you mean R&amp;D of Ettus or GNURadio? Can
          you address me to the relevant email address? <br>
        </div>
      </div>
    </blockquote>
    This thread really belongs on the usrp-users mailing list now,
    rather than discuss-gnuradio, i have copied usrp-users, and<br>
    =C2=A0 removed discuss-gnuradio.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"rtl">
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">2. Let me see if I get it right for USRP X310
          with UBX-160:</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">
          <ul>
            <li>Motherboard clock =3D MCR=C2=A0 =3Dmaster_clock_rate=C2=A0 =
=3D main
              clock rate =3D default value is 200MHz. The 10MHz REFCLK is
              used to set it.<br>
            </li>
            <li>Daughterboard Clock Rate in Hz =3D=C2=A0dboard_clock_rate =
=3D
              default value is 50MHz, need to change it to 20MHz for
              center frequencies=C2=A0under 1GHz do decrease spurs.<br>
              This is actually the clock that the motherboard injects
              into the daughterboard , i.e it is the reference=C2=A0clock o=
f
              the MAX2871 PLL which is on the daughterboard.</li>
            <li>According to=C2=A0<a href=3D"http://www.radio-science.net/2=
017/12/adventures-in-usrp-tuning.html" target=3D"_blank">this link</a>, if =
I
              set=C2=A0&quot;mode_n=3Dinteger&quot;,&quot;int_n_step=3D100e=
3&quot;, in Device Address
              parameter in USRP Sink block, then the frequency
              resolution on the PLL is:<br>
              frequency resolution [Hz] =3D int_n_step [Hz] =3D
              dboard_clock_rate [Hz] / (R divider=C2=A0 [-])=C2=A0<br>
              <br>
              For example:<br>
              100e3 [Hz] =3D 50e6 [Hz] / 500<br>
              <br>
              So -&gt;<b> the frequency=C2=A0resolution of the PLL is set b=
y
                the &quot;int_n_step&quot; parameter</b> -&gt; it calculate=
s=C2=A0the R
              divider [-] in the PLL relating to dboard_clock_rate and
              desired int_n__step.<br>
              I guess that the result must be in the range of allowed
              PLL&#39;s R divider values from 1 to 1023.</li>
          </ul>
          3.=C2=A0 =C2=A0Do I must set the=C2=A0
          &quot;int_n_step&quot; parameter as follows?</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">4.=C2=A0 Does the frequency resolution range from
          50MHz when R divider=3D 1[-] up to 0.05[MHz] when R divider =3D
          1000[-] ?</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Referring to this sentence in=C2=A0<a href=3D"http=
s://www.analog.com/media/en/technical-documentation/data-sheets/max2871.pdf=
" target=3D"_blank">max2871 PLL datasheet</a>:</div>
        <div dir=3D"ltr">&quot;&quot;The minimum R counter divide ratio is =
1, and
          the maximum divide ratio is 1023&quot;</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">5. Where can I find the relevant source code?
          I&#39;ve looked=C2=A0<a href=3D"https://github.com/EttusResearch/=
uhd" target=3D"_blank">here</a>=C2=A0but I&#39;m not sure where the
          daughterboard code/relevant code is.=C2=A0</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Thanks=C2=A0</div>
        <div dir=3D"ltr">Dor</div>
        <div dir=3D"ltr">
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=
=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=91=D7=B3, 6 =D7=91=D7=9E=D7=A8=D7=
=A5 2023
          =D7=91-19:10 =D7=9E=D7=90=D7=AA =E2=80=AAMarcus D. Leech=E2=80=AC=
=E2=80=8F &lt;=E2=80=AA<a href=3D"mailto:patchvonbraun@gmail.com" target=3D=
"_blank">patchvonbraun@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 06/03/2023 08:54, Dor Ratz wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"rtl">
                <div dir=3D"ltr">Hey Marcus,=C2=A0</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">Thanks a lot.</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">I&#39;m=C2=A0using e<span>xternal 10 MHz r=
eference
                    clock (</span>REFCLK) with 1e-12[Hz] frequency
                  resolution -&gt; it feeds my PLL in the UBX-160
                  daughterboard in the X310 USRP.</div>
              </div>
            </blockquote>
            The REFCLCK input to the X310 is used to control the
            master-clock(s) on the motherboard, which, in turn produce
            clocks for<br>
            =C2=A0 the daughtercards--but the daughtercards never see your
            external clock directly.<br>
            <blockquote type=3D"cite">
              <div dir=3D"rtl">
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">So, <b>when defining &quot;mode_n=3Dintege=
r&quot;</b>
                  in the Device Address parameter of the UHD: USRP Sink
                  block in GNURadio to set PLL in integer-N mode, <b>what
                    is exactly R-DIVIDER=3D reference divider of the PLL</b=
>?</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">I&#39;ve looked in the PLL (max2871)
                  datasheet:</div>
                <div dir=3D"ltr"><a href=3D"https://www.analog.com/media/en=
/technical-documentation/data-sheets/max2871.pdf" target=3D"_blank">https:/=
/www.analog.com/media/en/technical-documentation/data-sheets/max2871.pdf</a=
><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">According to it:</div>
                <div dir=3D"ltr">&quot;The minimum R counter divide ratio i=
s 1,
                  and the maximum divide ratio is 1023&quot;</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">I understand that if for example, the R
                  counter=3D(R-DIVIDER)=3D1000 -&gt; the frequency
                  resolution is 10MHz/1000 =3D 0.01MHz=3D 10KHz, correct?</=
div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">But I don&#39;t know what is the R-DIVIDER
                  chosen=C2=A0in the PLL with the settings in gnuradio.</di=
v>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">Thanks,</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">Dor</div>
                <div dir=3D"ltr"><br>
                </div>
              </div>
            </blockquote>
            You&#39;d have to go looking through the source code.=C2=A0 Unl=
ess
            someone from R&amp;D happens to know off the top of their
            heads.<br>
            =C2=A0 10 years ago, I kept all of this in my head--when there
            were FAR fewer products to keep track of and the codebase
            was<br>
            =C2=A0 more modest.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"rtl">
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=
=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=94=D7=B3, 2 =D7=91=D7=9E=D7=
=A8=D7=A5
                  2023 =D7=91-21:55 =D7=9E=D7=90=D7=AA =E2=80=AAMarcus D. L=
eech=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a href=3D"mailto:patchvonbraun@gmail.c=
om" target=3D"_blank">patchvonbraun@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=
=80=AC<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 02/03/2023 13:09, Dor Ratz wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"rtl">
                        <div dir=3D"ltr">Hey,</div>
                        <div dir=3D"ltr"><br>
                        </div>
                        <div dir=3D"ltr">Do you know how=C2=A0to assess the=
 RF
                          PLL resolution in integer-N mode?</div>
                        <div dir=3D"ltr"><br>
                        </div>
                        <div dir=3D"ltr">I&#39;ve looked in ANALOG max2871 =
PLL
                          datasheet - not sure I found the answer there.</d=
iv>
                        <div dir=3D"ltr"><a href=3D"https://www.analog.com/=
media/en/technical-documentation/data-sheets/max2871.pdf" target=3D"_blank"=
>https://www.analog.com/media/en/technical-documentation/data-sheets/max287=
1.pdf</a><br>
                        </div>
                        <div dir=3D"ltr"><br>
                        </div>
                        <div dir=3D"ltr">The Ettus team is CC here too -
                          it will be helpful to know what you suggest.</div=
>
                        <div dir=3D"ltr"><br>
                        </div>
                        <div dir=3D"ltr">Thanks,</div>
                        <div dir=3D"ltr">Dor <br>
                        </div>
                      </div>
                    </blockquote>
                    It will depend on the REFCLK that is being used by
                    that board (I do not happen to know off the top of
                    my head), and by<br>
                    =C2=A0 whatever flexibility in reference divider the PL=
L
                    has.<br>
                    <br>
                    In an Integer-N PLL (and you can spend quite a bit
                    of time learning how PLL synthesizers work online),
                    the &quot;step size&quot; is<br>
                    =C2=A0 dependent on the REFCLK, which itself may have a
                    divider on it.=C2=A0 So, let&#39;s say your REFCLK is 1=
0MHz
                    and there&#39;s a divider<br>
                    =C2=A0 that can divide the reference clock by up to
                    10000, then your minimum step size is 1kHz.=C2=A0=C2=A0=
 This
                    is in tension with the<br>
                    =C2=A0 fact that having a high ratio between the desire=
d
                    frequency and the reference frequency tends to
                    create signal-quality issues,<br>
                    =C2=A0 like, as I recall, phase noise.=C2=A0 But I&#39;=
d research
                    the datasheet and the overall concept of PLL
                    synthesis.<br>
                    <br>
                    My recollection on the X310 is that the
                    reference-clock frequency is 100MHz, but that&#39;s jus=
t
                    a hazy memory.<br>
                    <br>
                    <br>
                    <br>
                    <blockquote type=3D"cite">
                      <div dir=3D"rtl">
                        <div dir=3D"ltr"><br>
                        </div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=
=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D
                          =D7=93=D7=B3, 1 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=
=91-21:10 =D7=9E=D7=90=D7=AA =E2=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F
                          &lt;=E2=80=AA<a href=3D"mailto:patchvonbraun@gmai=
l.com" target=3D"_blank">patchvonbraun@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=
=E2=80=AC<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div>
                            <div>On 01/03/2023 13:14, Dor Ratz wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"auto">
                                <div dir=3D"rtl">
                                  <div dir=3D"ltr">Hey Marcus, How are
                                    you?</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Not sure if you got my
                                    email.</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Do you know anyway I
                                    can change transmitted frequency
                                    using PMT message when doing your
                                    solution?</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">In addition, something
                                    that seemed to help me:</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">I used this:</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr"><a href=3D"https://lists=
.gnu.org/archive/html/discuss-gnuradio/2011-09/msg00309.html" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.gnu.org/archive/html/discuss-gnuradio=
/2011-09/msg00309.html</a></div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">In the USRP Sinc block,
                                    in center frequency parameter, I&#39;ve
                                    put this:</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">
                                    <pre style=3D"color:rgb(0,0,0)">uhd.tun=
e_request(target_freq=3D1003e6, dsp_freq=3D0,
dsp_freq_policy=3Duhd.tune_request.POLICY_MANUAL)</pre>
                                  </div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">With this, the
                                    transmitted 1003MHz signal is
                                    cleaner and the spur is now further
                                    away at 16KHz offset with amplitude
                                    of 60dBc below the signal.</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">This alone cleans the
                                    spectrum!</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">In addition, I type
                                    &quot;mode_n=3Dinteger&quot; in the</di=
v>
                                  <div dir=3D"ltr">Device Address
                                    parameter of the UHD: USRP Sink
                                    block, but it doesn&#39;t seem to
                                    affect. The tuning without DSP
                                    correction in the FPGA seems to just
                                    be sufficient to clean the spectrum.</d=
iv>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Why is that? Do you
                                    recommend using something else?</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Thanks</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Dor <br>
                                  </div>
                                </div>
                              </div>
                            </blockquote>
                            Note that only works if the underlying RF
                            PLL has enough &quot;resolution&quot; to make t=
hat
                            work--particularly in integer-N mode.<br>
                            <br>
                            I&#39;m surprised that the DDC/DUC have such
                            significant &quot;close in&quot; spurs.=C2=A0=
=C2=A0=C2=A0 I don&#39;t
                            know if there&#39;s anyone from the R&amp;D tea=
m<br>
                            =C2=A0 on here who can authoritatively comment,
                            but this is a bit of a surprise.<br>
                            <br>
                            <br>
                            <blockquote type=3D"cite">
                              <div dir=3D"auto">
                                <div dir=3D"rtl">
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                </div>
                                <br>
                                <div class=3D"gmail_quote">
                                  <div dir=3D"rtl" class=3D"gmail_attr">=E2=
=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A
                                    =D7=99=D7=95=D7=9D =D7=91=D7=B3, 27 =D7=
=91=D7=A4=D7=91=D7=A8=D7=B3 2023 =D7=91-15:08 =D7=9E=D7=90=D7=AA
                                    =E2=80=AADor Ratz=E2=80=AC=E2=80=8F &lt=
;=E2=80=AA<a href=3D"mailto:dorratz12@gmail.com" rel=3D"noreferrer noreferr=
er
                                      noreferrer noreferrer" target=3D"_bla=
nk">dorratz12@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                                  </div>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div dir=3D"rtl">
                                      <div dir=3D"ltr">Hi Marcus,</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">Can I pass the
                                        desired center frequency with a
                                        PMT message?=C2=A0</div>
                                      <div dir=3D"ltr">I want to
                                        dynamically change the
                                        transmitted center frequency of
                                        UHD: USRP Sink block.=C2=A0</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">So static
                                        frequency=C2=A0in the block is not
                                        sufficient.</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">Thanks=C2=A0</div>
                                      <div dir=3D"ltr">Dor</div>
                                      <br>
                                      <div class=3D"gmail_quote">
                                        <div dir=3D"rtl" class=3D"gmail_att=
r">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D
                                          =D7=91=D7=B3, 27 =D7=91=D7=A4=D7=
=91=D7=A8=D7=B3 2023 =D7=91-13:44 =D7=9E=D7=90=D7=AA
                                          =E2=80=AAMarcus M=C3=BCller=E2=80=
=AC=E2=80=8F &lt;=E2=80=AA<a href=3D"mailto:marcus.mueller@ettus.com" rel=
=3D"noreferrer noreferrer
                                            noreferrer noreferrer" target=
=3D"_blank">marcus.mueller@ettus.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br=
>
                                        </div>
                                        <blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Hi
                                          Dor,<br>
                                          <br>
                                          &gt;=C2=A0 1. How to change the t=
o
                                          integer_n tuning? Should I
                                          just type &quot;mode_n=3Dinteger&=
quot; in
                                          the<br>
                                          &gt;=C2=A0 =C2=A0 =C2=A0Device Ad=
dress
                                          parameter of the UHD: USRP
                                          Sink block in the grc?<br>
                                          <br>
                                          yes. Or, better, instead of
                                          just tuning to the target
                                          frequency, you can pass a <br>
                                          uhd.tune_request_t to
                                          uhd_usrp_{sink,source}.set_center=
_frequency,
                                          like this:<br>
                                          <br>
my_uhd_block.set_center_frequency(uhd.tune_request_t(<br>
                                          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0target_freq =3D
                                          2.4e9,<br>
                                          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0
                                          =C2=A0args=3D&quot;mode_n=3Dinteg=
er&quot;))<br>
                                          <br>
                                          (you can also use a
                                          uhd.tune_request_t in the RF
                                          frequency fields of the GRC
                                          block)<br>
                                          <br>
                                          Note that you&#39;re probably bes=
t
                                          off using tune_request_t
                                          anyway, as it allows you to
                                          tune <br>
                                          your LO far away from your
                                          band of interest, given the
                                          analog bandwidth allows for
                                          that, <br>
                                          using `target_freq=3D` and
                                          `rf_freq` or `dsp_freq`.<br>
                                          <br>
                                          For more information on
                                          tuning, see the UHD manual [1]<br=
>
                                          <br>
                                          &gt;=C2=A0 2. How to know for sur=
e
                                          what the mode(integer of
                                          fractional) of the NCO is? Can
                                          I print<br>
                                          &gt;=C2=A0 =C2=A0 =C2=A0its statu=
s/get it
                                          somehow? <br>
                                          <br>
                                          looking at the UHD source
                                          code: the routines responsible
                                          for tuning just themselves
                                          check <br>
                                          for &quot;mode_n&quot; being set =
to
                                          &quot;integer&quot; in the device=
 or
                                          tune request arguments.<br>
                                          <br>
                                          Best regards,<br>
                                          Marcus<br>
                                          <br>
                                          [1] <a href=3D"https://files.ettu=
s.com/manual/page_general.html#general_tuning" rel=3D"noreferrer noreferrer
                                            noreferrer noreferrer
                                            noreferrer" target=3D"_blank">h=
ttps://files.ettus.com/manual/page_general.html#general_tuning</a><br>
                                        </blockquote>
                                      </div>
                                    </div>
                                  </blockquote>
                                </div>
                              </div>
                            </blockquote>
                            <br>
                          </div>
                        </blockquote>
                      </div>
                    </blockquote>
                    <br>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div></div>

--000000000000357da105f646161b--

--===============5635093263464869520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5635093263464869520==--
